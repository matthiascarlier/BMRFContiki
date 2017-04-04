/*
 * Copyright (c) 2010, Loughborough University - Computer Science
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the Institute nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * This file is part of the Contiki operating system.
 */

/**
 * \file
 *         This node is part of the RPL multicast example. It is a node that
 *         joins a multicast group and listens for messages. It also knows how
 *         to forward messages down the tree.
 *         For the example to work, we need one or more of those nodes.
 *
 * \author
 *         George Oikonomou - <oikonomou@users.sourceforge.net>
 */

#include "contiki.h"
#include "contiki-lib.h"
#include "contiki-net.h"
#include "net/ipv6/multicast/uip-mcast6.h"
#include "dev/button-sensor.h"
#include "dev/leds.h"

#include <string.h>

#define DEBUG DEBUG_PRINT
#include "net/ip/uip-debug.h"

#define MCAST_SINK_UDP_PORT 3001 /* Host byte order */

static struct uip_udp_conn *sink_conn;
static uint16_t count;
static uint8_t subscribed;

#define UIP_IP_BUF   ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])

#if !UIP_CONF_IPV6 || !UIP_CONF_ROUTER || !UIP_CONF_IPV6_MULTICAST || !UIP_CONF_IPV6_RPL
#error "This example can not work with the current contiki configuration"
#error "Check the values of: UIP_CONF_IPV6, UIP_CONF_ROUTER, UIP_CONF_IPV6_RPL"
#endif
/*---------------------------------------------------------------------------*/
PROCESS(mcast_sink_process, "Multicast Sink");
AUTOSTART_PROCESSES(&mcast_sink_process);
/*---------------------------------------------------------------------------*/
static void
tcpip_handler(void)
{
  if(uip_newdata()) {
    count++;
    leds_toggle(LEDS_BLUE);
    PRINTF("In: sequence-msg [%lu], TTL %u, total %u , from: ",
        uip_ntohl((unsigned long) *((uint32_t *)(uip_appdata))),
        UIP_IP_BUF->ttl, count);
    PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
    PRINTF("\n");
  }
  return;
}
/*---------------------------------------------------------------------------*/
static void
set_own_ip_address(void){
  uip_ipaddr_t addr;

  /* First, set our v6 global */
  uip_ip6addr(&addr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
  uip_ds6_set_addr_iid(&addr, &uip_lladdr);
  uip_ds6_addr_add(&addr, 0, ADDR_AUTOCONF);
}
/*---------------------------------------------------------------------------*/
static uip_ds6_maddr_t *
join_mcast_group(void)
{
  uip_ipaddr_t addr;
  uip_ds6_maddr_t *rv;

  /*
   * IPHC will use stateless multicast compression for this destination
   * (M=1, DAC=0), with 32 inline bits (1E 89 AB CD)
   */
  uip_ip6addr(&addr, 0xFF1E,0,0,0,0,0,0x89,0xABCD);
  rv = uip_ds6_maddr_add(&addr);
  if(rv) {
    PRINTF("Joined multicast group ");
    PRINT6ADDR(&uip_ds6_maddr_lookup(&addr)->ipaddr);
    PRINTF("\n");
  }
  return rv;
}
/*---------------------------------------------------------------------------*/
static void
unjoin_mcast_group(void){
  uip_ipaddr_t addr;
  uip_ds6_maddr_t *mcast_addrs;
  uip_ip6addr(&addr, 0xFF1E,0,0,0,0,0,0x89,0xABCD);
  mcast_addrs = uip_ds6_maddr_lookup(&addr);
  uip_ds6_maddr_rm(mcast_addrs);
  PRINTF("Unsubscribing from multicast group\n");
}
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(mcast_sink_process, ev, data)
{
  PROCESS_BEGIN();
  SENSORS_ACTIVATE(button_sensor);

  PRINTF("Multicast Engine: '%s'\n", UIP_MCAST6.name);

  set_own_ip_address();

  if(join_mcast_group() == NULL) {
    PRINTF("Failed to join multicast group\n");
    PROCESS_EXIT();
  }

  leds_off(LEDS_ALL);
  leds_on(LEDS_GREEN);

  subscribed = 1;

  count = 0;

  sink_conn = udp_new(NULL, UIP_HTONS(0), NULL);
  udp_bind(sink_conn, UIP_HTONS(MCAST_SINK_UDP_PORT));

  PRINTF("Listening: ");
  PRINT6ADDR(&sink_conn->ripaddr);
  PRINTF(" local/remote port %u/%u\n",
        UIP_HTONS(sink_conn->lport), UIP_HTONS(sink_conn->rport));

  while(1) {
    PROCESS_YIELD();
PRINTF("test\n");
    if(ev == tcpip_event) {
      tcpip_handler();
    } else if(ev == sensors_event && data == &button_sensor) {
      if(subscribed == 1) {
        unjoin_mcast_group();
        subscribed = 0;
        leds_off(LEDS_GREEN);
        leds_on(LEDS_RED);
      } else {
        if(join_mcast_group() == NULL) {
          PRINTF("Failed to join multicast group\n");
          PROCESS_EXIT();
        }
        subscribed = 1;
        leds_off(LEDS_RED);
        leds_on(LEDS_GREEN);
      }
    }
  }

  PROCESS_END();
}
/*---------------------------------------------------------------------------*/
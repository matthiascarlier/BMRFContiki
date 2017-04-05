//import Java Package to JavaScript
importPackage(java.io);

simulation_time = 20000;

TIMEOUT(20000, timeout_func()); /* milliseconds */

outs = new Array(100);
total_time = 0;
total_ins = 0;

pdr = 0;
frame_tx = 0;
msg_tx = 0;
rx_time = 0;
tx_time = 0;
lpm_time = 0;
cpu_time = 0;
total_subscribed = 0;
total_nodes = 0;

fr = new File("raw_results.csv");
fd = new File("delay_results.csv");
fs = new File("summary_results.csv");
fdup = new File("duplicates_results.csv");
frawdup = new File("duplicates_raw_results.csv");
//Use this if using the GUI 
//f = new File("../../../examples/ipv6/multicast/simulations-bmrf/log.txt");
tfraw = new FileWriter(fr);
tfdelay = new FileWriter(fd);
tfsummary = new FileWriter(fs);
tfduplicates = new FileWriter(fdup);
tfraw_duplicates = new FileWriter(frawdup);

timeout_func = function simulationEnd() {
  /* Extract PowerTracker statistics */
  plugin = mote.getSimulation().getCooja().getStartedPlugin("PowerTracker");
  if (plugin != null) {
    stats = plugin.radioStatistics();
    splited_stats = stats.split(/\r\n|\n|\r/);
    splited_on = splited_stats[0].split(" ");
    splited_tx = splited_stats[1].split(" ");
    splited_rx = splited_stats[2].split(" ");
    splited_int = splited_stats[3].split(" ");
    idle_listening = (splited_on[2]-splited_tx[2]-splited_rx[2])/(1000000*51);
    //log.log("PowerTracker: Extracted statistics:\n"
    //  + "AVG ON " + splited_on[2]/(1000000*51) + "s " + splited_on[4] + "%" +"\n"
    //  + "AVG TX " + splited_tx[2]/(1000000*51) + "s " + splited_tx[4] + "%" + "\n"
    //  + "AVG RX " + splited_rx[2]/(1000000*51) + "s " + splited_rx[4] + "%" + "\n"
    //  + "AVG IDLE LISTENING " + idle_listening + "s " + idle_listening*100/(simulation_time/1000) + "%" + "\n"
    //  + "AVG INT " + splited_int[2]/(1000000*51) + "s " + splited_int[4] + "%" + "\n"
    //  + "\n");
    tfsummary.write("PowerTracker: Extracted statistics:\n"
    + "AVG ON " + splited_on[2]/(1000000*51) + "s " + splited_on[4] + "%" +"\n"
    + "AVG TX " + splited_tx[2]/(1000000*51) + "s " + splited_tx[4] + "%" + "\n"
    + "AVG RX " + splited_rx[2]/(1000000*51) + "s " + splited_rx[4] + "%" + "\n"
    + "AVG IDLE LISTENING " + idle_listening + "s " + idle_listening*100/(simulation_time/1000) + "%" + "\n"
    + "AVG INT " + splited_int[2]/(1000000*51) + "s " + splited_int[4] + "%" + "\n"
    + "\n");
  } else {
    //log.log("No PowerTracker plugin\n");
    tfsummary.write("No PowerTracker plugin\n");
  }
  //log.log("Average end-to-end delay: " + (total_time/total_ins) +"\n");
  //log.log("Packet delivery ratio: " + (pdr/total_subscribed) + "\n");
  //log.log("Frame transmission: " + (frame_tx/total_nodes) + "\n");
  //log.log("Packet transmission: " + (msg_tx/total_nodes) + "\n");
  //log.log("Rx time: " + (rx_time/total_nodes) + " = " + ((rx_time/total_nodes)/32768) + " s" + "\n");
  //log.log("Tx time: " + (tx_time/total_nodes) + " = " + ((tx_time/total_nodes)/32768) + " s" + "\n");
  //log.log("LPM time: " + (lpm_time/total_nodes) + " = " + ((lpm_time/total_nodes)/32768) + " s" + "\n");
  //log.log("CPU time: " + (cpu_time/total_nodes) + " = " + ((cpu_time/total_nodes)/32768) + " s" + "\n");

  tfsummary.write("Average end-to-end delay: " + (total_time/total_ins) +"\n");
  tfsummary.write("Packet delivery ratio: " + (pdr/total_subscribed) + "\n");
  tfsummary.write("Frame transmission: " + (frame_tx/total_nodes) + "\n");
  tfsummary.write("Packet transmission: " + (msg_tx/total_nodes) + "\n");
  tfsummary.write("Rx time: " + (rx_time/total_nodes) + " = " + ((rx_time/total_nodes)/32768) + " s" + "\n");
  tfsummary.write("Tx time: " + (tx_time/total_nodes) + " = " + ((tx_time/total_nodes)/32768) + " s" + "\n");
  tfsummary.write("LPM time: " + (lpm_time/total_nodes) + " = " + ((lpm_time/total_nodes)/32768) + " s" + "\n");
  tfsummary.write("CPU time: " + (cpu_time/total_nodes) + " = " + ((cpu_time/total_nodes)/32768) + " s" + "\n");
    
  tfraw.close();
  tfdelay.close();
  tfsummary.close();
  tfduplicates.close();
  tfraw_duplicates.close();
  log.testOK();
}

while(true){
  YIELD();
  time_msg = sim.getSimulationTimeMillis();
  time_msg_seconds = time_msg/1000;
  message = msg.split(";");
  //log.log(""+message[0]+"\n");
  if (message.length == 2) {
    if (message[0]=="Out") {
      outs[parseInt(message[1])] = time_msg;
      //log.log("New out time\n");
      //log.log("outs["+parseInt(message[1])+"] = "+outs[parseInt(message[1])]+" = "+time_msg+"\n");
    } else if (message[0]=="In") {
      total_time = total_time + (time_msg - outs[parseInt(message[1])]);
      total_ins++;
      //log.log("Delay: "+time_msg+" + "+outs[parseInt(message[1])]+" = "+(time_msg - outs[parseInt(message[1])])+"\n");
      //log.log(""+parseInt(message[1])+";"+id+";"+(time_msg - outs[parseInt(message[1])])+"\n");
      tfdelay.write(""+parseInt(message[1])+";"+id+";"+(time_msg - outs[parseInt(message[1])])+"\n");
    }else if (message[0]=="Duplicates") {
      tfduplicates.write(""+id+";"+parseInt(message[1])+"\n");
    }else if (message[0]=="Received duplicate") {
      tfraw_duplicates.write((time_msg_seconds/60|0) + ":" + (time_msg_seconds % 60).toFixed(3) + ";ID:" + id + ";" + msg + "\n");
    }
  } else if (message.length == 7) {
    if (message[0] != "n") {
      pdr += parseInt(message[0]);
      total_subscribed++;
    }
    frame_tx += parseInt(message[1]);
    msg_tx += parseInt(message[2]);
    rx_time += parseInt(message[3]);
    tx_time += parseInt(message[4]);
    lpm_time += parseInt(message[5]);
    cpu_time += parseInt(message[6]);
    total_nodes++;
    tfraw.write((time_msg_seconds/60|0) + ":" + (time_msg_seconds % 60).toFixed(3) + ";ID:" + id + ";" + id + ";" + msg + "\n");
  }
}

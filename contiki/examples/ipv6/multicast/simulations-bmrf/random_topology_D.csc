<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <project EXPORT="discard">[APPS_DIR]/mrm</project>
  <project EXPORT="discard">[APPS_DIR]/mspsim</project>
  <project EXPORT="discard">[APPS_DIR]/avrora</project>
  <project EXPORT="discard">[APPS_DIR]/serial_socket</project>
  <project EXPORT="discard">[APPS_DIR]/collect-view</project>
  <project EXPORT="discard">[APPS_DIR]/powertracker</project>
  <simulation>
    <title>BMRF-test-sky</title>
    <randomseed>5</randomseed>
    <motedelay_us>1000000</motedelay_us>
    <radiomedium>
      org.contikios.cooja.radiomediums.UDGM
      <transmitting_range>50.0</transmitting_range>
      <interference_range>50.0</interference_range>
      <success_ratio_tx>1.0</success_ratio_tx>
      <success_ratio_rx>1.0</success_ratio_rx>
    </radiomedium>
    <events>
      <logoutput>40000</logoutput>
    </events>
    <motetype>
      org.contikios.cooja.mspmote.SkyMoteType
      <identifier>sky1</identifier>
      <description>root</description>
      <source EXPORT="discard">[CONTIKI_DIR]/examples/ipv6/multicast/simulations-bmrf/root.c</source>
      <commands EXPORT="discard">make root.sky TARGET=sky</commands>
      <firmware EXPORT="copy">[CONTIKI_DIR]/examples/ipv6/multicast/simulations-bmrf/root.sky</firmware>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyButton</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyFlash</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyCoffeeFilesystem</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.Msp802154Radio</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspSerial</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyLED</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyTemperature</moteinterface>
    </motetype>
    <motetype>
      org.contikios.cooja.mspmote.SkyMoteType
      <identifier>sky2</identifier>
      <description>intermediate</description>
      <source EXPORT="discard">[CONTIKI_DIR]/examples/ipv6/multicast/simulations-bmrf/intermediate.c</source>
      <commands EXPORT="discard">make intermediate.sky TARGET=sky</commands>
      <firmware EXPORT="copy">[CONTIKI_DIR]/examples/ipv6/multicast/simulations-bmrf/intermediate.sky</firmware>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyButton</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyFlash</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyCoffeeFilesystem</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.Msp802154Radio</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspSerial</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyLED</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyTemperature</moteinterface>
    </motetype>
    <motetype>
      org.contikios.cooja.mspmote.SkyMoteType
      <identifier>sky3</identifier>
      <description>sink</description>
      <source EXPORT="discard">[CONTIKI_DIR]/examples/ipv6/multicast/simulations-bmrf/sink.c</source>
      <commands EXPORT="discard">make sink.sky TARGET=sky</commands>
      <firmware EXPORT="copy">[CONTIKI_DIR]/examples/ipv6/multicast/simulations-bmrf/sink.sky</firmware>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyButton</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyFlash</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyCoffeeFilesystem</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.Msp802154Radio</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspSerial</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyLED</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyTemperature</moteinterface>
    </motetype>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>131.6626084673932</x>
        <y>166.76008298591813</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>1</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>85.6501187767732</x>
        <y>191.38335788054894</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>2</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>183.2978197086973</x>
        <y>5.623610604485774</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>3</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>56.50171185728359</x>
        <y>45.41716252841348</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>4</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>44.594012066518474</x>
        <y>181.13845622345463</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>5</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>134.40673750954662</x>
        <y>198.53163030182998</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>6</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>7.646395728311317</x>
        <y>196.8622737933027</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>7</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>101.8130473094534</x>
        <y>151.07478521311018</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>8</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>75.01150002408056</x>
        <y>168.65126080284347</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>9</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>190.29387686019427</x>
        <y>42.38474712947276</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>10</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>171.98136411497003</x>
        <y>13.919573900925219</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>11</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>44.3107050471667</x>
        <y>129.13225166149323</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>12</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>161.06181886342156</x>
        <y>83.4780034235645</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>13</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>133.982449592013</x>
        <y>84.38846914486848</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>14</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>74.86245036666222</x>
        <y>129.33211979281037</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>15</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>21.278591194243734</x>
        <y>190.22211994817295</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>16</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>111.37769492786778</x>
        <y>13.55779267619852</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>17</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>47.464008348973906</x>
        <y>184.77762410233646</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>18</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>187.07963432180026</x>
        <y>54.150369258074235</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>19</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>82.34736899599977</x>
        <y>134.65014298744455</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>20</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>104.48658370820583</x>
        <y>117.5080085535122</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>21</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>154.9934320006129</x>
        <y>27.336414847254954</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>22</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>82.42492252372573</x>
        <y>157.28000961899508</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>23</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>127.49764191497077</x>
        <y>43.36049911259414</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>24</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>123.94813970190643</x>
        <y>78.38272374742617</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>25</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>44.009207034607115</x>
        <y>184.48332535008473</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>26</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>98.07403629881036</x>
        <y>195.12932696922323</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>27</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>111.62216237993563</x>
        <y>148.7123310094109</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>28</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>10.781546302812984</x>
        <y>35.08029203267662</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>29</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>182.6023922718866</x>
        <y>84.51533650760041</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>30</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>196.0806202102986</x>
        <y>6.219554818191786</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>31</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>102.62826786788072</x>
        <y>189.96866557082308</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>32</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>111.81440628127626</x>
        <y>44.59215823340019</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>33</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>70.6130609175504</x>
        <y>196.1664851808761</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>34</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>153.93105125558805</x>
        <y>152.17292072998598</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>35</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>84.94454258748885</x>
        <y>71.09421870730395</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>36</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>168.40502224917358</x>
        <y>139.41789257025644</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>37</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>100.69094386861795</x>
        <y>67.70607974141672</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>38</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>37.30303672837969</x>
        <y>32.00112410991247</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>39</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>23.92858819044672</x>
        <y>19.903762732199006</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>40</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>124.5603441304254</x>
        <y>174.35416421054725</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>41</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>163.66473504423936</x>
        <y>148.6222843148317</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>42</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>2.116801277099545</x>
        <y>160.87453157292458</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>43</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>49.05546264013165</x>
        <y>97.79815628189425</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>44</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>136.79205785115622</x>
        <y>105.49832142926039</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>45</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>9.322337466777796</x>
        <y>181.50698306075813</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>46</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>35.66259522476165</x>
        <y>87.56043988061026</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>47</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>74.89930435437519</x>
        <y>28.270402516185555</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>48</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>40.123695180304985</x>
        <y>111.68983692813993</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>49</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>169.2121921403747</x>
        <y>180.07822859901606</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>50</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>78.03396102634682</x>
        <y>26.476355721698376</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>51</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.SimControl
    <width>280</width>
    <z>4</z>
    <height>160</height>
    <location_x>34</location_x>
    <location_y>522</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.Visualizer
    <plugin_config>
      <moterelations>true</moterelations>
      <skin>org.contikios.cooja.plugins.skins.IDVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.GridVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.TrafficVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.UDGMVisualizerSkin</skin>
      <viewport>2.0876647500664647 0.0 0.0 2.0876647500664647 77.11511480334657 7.896150009278726</viewport>
    </plugin_config>
    <width>578</width>
    <z>0</z>
    <height>496</height>
    <location_x>1</location_x>
    <location_y>1</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.LogListener
    <plugin_config>
      <filter />
      <formatted_time />
      <coloring />
    </plugin_config>
    <width>687</width>
    <z>3</z>
    <height>822</height>
    <location_x>646</location_x>
    <location_y>-15</location_y>
  </plugin>
  <plugin>
    PowerTracker
    <width>579</width>
    <z>1</z>
    <height>523</height>
    <location_x>48</location_x>
    <location_y>41</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script>//import Java Package to JavaScript&#xD;
importPackage(java.io);&#xD;
&#xD;
simulation_time = 785000;&#xD;
&#xD;
TIMEOUT(785000, timeout_func()); /* milliseconds */&#xD;
&#xD;
outs = new Array(100);&#xD;
total_time = 0;&#xD;
total_ins = 0;&#xD;
&#xD;
pdr = 0;&#xD;
frame_tx = 0;&#xD;
msg_tx = 0;&#xD;
rx_time = 0;&#xD;
tx_time = 0;&#xD;
lpm_time = 0;&#xD;
cpu_time = 0;&#xD;
total_subscribed = 0;&#xD;
total_nodes = 0;&#xD;
&#xD;
fr = new File("raw_results.csv");&#xD;
fd = new File("delay_results.csv");&#xD;
fs = new File("summary_results.csv");&#xD;
fdup = new File("duplicates_results.csv");&#xD;
frawdup = new File("duplicates_raw_results.csv");&#xD;
//Use this if using the GUI &#xD;
//f = new File("../../../examples/ipv6/multicast/simulations-bmrf/log.txt");&#xD;
tfraw = new FileWriter(fr);&#xD;
tfdelay = new FileWriter(fd);&#xD;
tfsummary = new FileWriter(fs);&#xD;
tfduplicates = new FileWriter(fdup);&#xD;
tfraw_duplicates = new FileWriter(frawdup);&#xD;
&#xD;
timeout_func = function simulationEnd() {&#xD;
  /* Extract PowerTracker statistics */&#xD;
  plugin = mote.getSimulation().getCooja().getStartedPlugin("PowerTracker");&#xD;
  if (plugin != null) {&#xD;
    stats = plugin.radioStatistics();&#xD;
    splited_stats = stats.split(/\r\n|\n|\r/);&#xD;
    splited_on = splited_stats[0].split(" ");&#xD;
    splited_tx = splited_stats[1].split(" ");&#xD;
    splited_rx = splited_stats[2].split(" ");&#xD;
    splited_int = splited_stats[3].split(" ");&#xD;
    idle_listening = (splited_on[2]-splited_tx[2]-splited_rx[2])/(1000000*51);&#xD;
    //log.log("PowerTracker: Extracted statistics:\n"&#xD;
    //  + "AVG ON " + splited_on[2]/(1000000*51) + "s " + splited_on[4] + "%" +"\n"&#xD;
    //  + "AVG TX " + splited_tx[2]/(1000000*51) + "s " + splited_tx[4] + "%" + "\n"&#xD;
    //  + "AVG RX " + splited_rx[2]/(1000000*51) + "s " + splited_rx[4] + "%" + "\n"&#xD;
    //  + "AVG IDLE LISTENING " + idle_listening + "s " + idle_listening*100/(simulation_time/1000) + "%" + "\n"&#xD;
    //  + "AVG INT " + splited_int[2]/(1000000*51) + "s " + splited_int[4] + "%" + "\n"&#xD;
    //  + "\n");&#xD;
    tfsummary.write("PowerTracker: Extracted statistics:\n"&#xD;
    + "AVG ON " + splited_on[2]/(1000000*51) + "s " + splited_on[4] + "%" +"\n"&#xD;
    + "AVG TX " + splited_tx[2]/(1000000*51) + "s " + splited_tx[4] + "%" + "\n"&#xD;
    + "AVG RX " + splited_rx[2]/(1000000*51) + "s " + splited_rx[4] + "%" + "\n"&#xD;
    + "AVG IDLE LISTENING " + idle_listening + "s " + idle_listening*100/(simulation_time/1000) + "%" + "\n"&#xD;
    + "AVG INT " + splited_int[2]/(1000000*51) + "s " + splited_int[4] + "%" + "\n"&#xD;
    + "\n");&#xD;
  } else {&#xD;
    //log.log("No PowerTracker plugin\n");&#xD;
    tfsummary.write("No PowerTracker plugin\n");&#xD;
  }&#xD;
  //log.log("Average end-to-end delay: " + (total_time/total_ins) +"\n");&#xD;
  //log.log("Packet delivery ratio: " + (pdr/total_subscribed) + "\n");&#xD;
  //log.log("Frame transmission: " + (frame_tx/total_nodes) + "\n");&#xD;
  //log.log("Packet transmission: " + (msg_tx/total_nodes) + "\n");&#xD;
  //log.log("Rx time: " + (rx_time/total_nodes) + " = " + ((rx_time/total_nodes)/32768) + " s" + "\n");&#xD;
  //log.log("Tx time: " + (tx_time/total_nodes) + " = " + ((tx_time/total_nodes)/32768) + " s" + "\n");&#xD;
  //log.log("LPM time: " + (lpm_time/total_nodes) + " = " + ((lpm_time/total_nodes)/32768) + " s" + "\n");&#xD;
  //log.log("CPU time: " + (cpu_time/total_nodes) + " = " + ((cpu_time/total_nodes)/32768) + " s" + "\n");&#xD;
&#xD;
  tfsummary.write("Average end-to-end delay: " + (total_time/total_ins) +"\n");&#xD;
  tfsummary.write("Packet delivery ratio: " + (pdr/total_subscribed) + "\n");&#xD;
  tfsummary.write("Frame transmission: " + (frame_tx/total_nodes) + "\n");&#xD;
  tfsummary.write("Packet transmission: " + (msg_tx/total_nodes) + "\n");&#xD;
  tfsummary.write("Rx time: " + (rx_time/total_nodes) + " = " + ((rx_time/total_nodes)/32768) + " s" + "\n");&#xD;
  tfsummary.write("Tx time: " + (tx_time/total_nodes) + " = " + ((tx_time/total_nodes)/32768) + " s" + "\n");&#xD;
  tfsummary.write("LPM time: " + (lpm_time/total_nodes) + " = " + ((lpm_time/total_nodes)/32768) + " s" + "\n");&#xD;
  tfsummary.write("CPU time: " + (cpu_time/total_nodes) + " = " + ((cpu_time/total_nodes)/32768) + " s" + "\n");&#xD;
    &#xD;
  tfraw.close();&#xD;
  tfdelay.close();&#xD;
  tfsummary.close();&#xD;
  tfduplicates.close();&#xD;
  tfraw_duplicates.close();&#xD;
  log.testOK();&#xD;
}&#xD;
&#xD;
while(true){&#xD;
  YIELD();&#xD;
  time_msg = sim.getSimulationTimeMillis();&#xD;
  time_msg_seconds = time_msg/1000;&#xD;
  message = msg.split(";");&#xD;
  //log.log(""+message[0]+"\n");&#xD;
  if (message.length == 2) {&#xD;
    if (message[0]=="Out") {&#xD;
      outs[parseInt(message[1])] = time_msg;&#xD;
      //log.log("New out time\n");&#xD;
      //log.log("outs["+parseInt(message[1])+"] = "+outs[parseInt(message[1])]+" = "+time_msg+"\n");&#xD;
    } else if (message[0]=="In") {&#xD;
      total_time = total_time + (time_msg - outs[parseInt(message[1])]);&#xD;
      total_ins++;&#xD;
      //log.log("Delay: "+time_msg+" + "+outs[parseInt(message[1])]+" = "+(time_msg - outs[parseInt(message[1])])+"\n");&#xD;
      //log.log(""+parseInt(message[1])+";"+id+";"+(time_msg - outs[parseInt(message[1])])+"\n");&#xD;
      tfdelay.write(""+parseInt(message[1])+";"+id+";"+(time_msg - outs[parseInt(message[1])])+"\n");&#xD;
    }else if (message[0]=="Duplicates") {&#xD;
      tfduplicates.write(""+id+";"+parseInt(message[1])+"\n");&#xD;
    }else if (message[0]=="Received duplicate") {&#xD;
      tfraw_duplicates.write((time_msg_seconds/60|0) + ":" + (time_msg_seconds % 60).toFixed(3) + ";ID:" + id + ";" + msg + "\n");&#xD;
    }&#xD;
  } else if (message.length == 7) {&#xD;
    if (message[0] != "n") {&#xD;
      pdr += parseInt(message[0]);&#xD;
      total_subscribed++;&#xD;
    }&#xD;
    frame_tx += parseInt(message[1]);&#xD;
    msg_tx += parseInt(message[2]);&#xD;
    rx_time += parseInt(message[3]);&#xD;
    tx_time += parseInt(message[4]);&#xD;
    lpm_time += parseInt(message[5]);&#xD;
    cpu_time += parseInt(message[6]);&#xD;
    total_nodes++;&#xD;
    tfraw.write((time_msg_seconds/60|0) + ":" + (time_msg_seconds % 60).toFixed(3) + ";ID:" + id + ";" + id + ";" + msg + "\n");&#xD;
  }&#xD;
}</script>
      <active>true</active>
    </plugin_config>
    <width>600</width>
    <z>2</z>
    <height>700</height>
    <location_x>410</location_x>
    <location_y>82</location_y>
  </plugin>
</simconf>


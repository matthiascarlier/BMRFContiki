<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <project EXPORT="discard">[APPS_DIR]/mrm</project>
  <project EXPORT="discard">[APPS_DIR]/mspsim</project>
  <project EXPORT="discard">[APPS_DIR]/avrora</project>
  <project EXPORT="discard">[APPS_DIR]/serial_socket</project>
  <project EXPORT="discard">[APPS_DIR]/collect-view</project>
  <project EXPORT="discard">[APPS_DIR]/powertracker</project>
  <simulation>
    <title>BMRF-test-Z1</title>
    <randomseed>#randomseed#</randomseed>
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
      org.contikios.cooja.mspmote.Z1MoteType
      <identifier>z11</identifier>
      <description>Z1 root</description>
      <source EXPORT="discard">[CONTIKI_DIR]/examples/ipv6/multicast/simulations-bmrf-z1/root.c</source>
      <commands EXPORT="discard">make root.z1 TARGET=z1</commands>
      <firmware EXPORT="copy">[CONTIKI_DIR]/examples/ipv6/multicast/simulations-bmrf-z1/root.z1</firmware>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspButton</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.Msp802154Radio</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDefaultSerial</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspLED</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
    </motetype>
    <motetype>
      org.contikios.cooja.mspmote.Z1MoteType
      <identifier>z12</identifier>
      <description>Z1 intermediate</description>
      <source EXPORT="discard">[CONTIKI_DIR]/examples/ipv6/multicast/simulations-bmrf-z1/intermediate.c</source>
      <commands EXPORT="discard">make intermediate.z1 TARGET=z1</commands>
      <firmware EXPORT="copy">[CONTIKI_DIR]/examples/ipv6/multicast/simulations-bmrf-z1/intermediate.z1</firmware>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspButton</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.Msp802154Radio</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDefaultSerial</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspLED</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
    </motetype>
    <motetype>
      org.contikios.cooja.mspmote.Z1MoteType
      <identifier>z13</identifier>
      <description>Z1 sink</description>
      <source EXPORT="discard">[CONTIKI_DIR]/examples/ipv6/multicast/simulations-bmrf-z1/sink.c</source>
      <commands EXPORT="discard">make sink.z1 TARGET=z1</commands>
      <firmware EXPORT="copy">[CONTIKI_DIR]/examples/ipv6/multicast/simulations-bmrf-z1/sink.z1</firmware>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspButton</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.Msp802154Radio</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDefaultSerial</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspLED</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
    </motetype>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>34.71795196166938</x>
        <y>99.57828700010374</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>1</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>71.55267595962482</x>
        <y>105.8567052580992</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>2</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>106.0535443631916</x>
        <y>45.2807813842379</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>3</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>193.89106418723964</x>
        <y>24.776810320195363</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>4</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>13.324224814888975</x>
        <y>145.9160239237863</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>5</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>44.60449896598207</x>
        <y>192.8746155130376</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>6</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>80.7410245481785</x>
        <y>12.353088795296664</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>7</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>87.33527659436531</x>
        <y>63.15441581124337</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>8</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>78.00200289752463</x>
        <y>6.6027781262379515</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>9</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>92.37342249258877</x>
        <y>157.4217879528256</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>10</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>197.84313903841132</x>
        <y>68.43558632431854</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>11</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>166.94465842539677</x>
        <y>9.117351311960032</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>12</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>90.6072314488503</x>
        <y>63.774883795840424</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>13</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>76.97891567660365</x>
        <y>120.55086529388255</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>14</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>36.70215812743645</x>
        <y>76.99616825222326</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>15</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>68.38109163511162</x>
        <y>12.335395369507829</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>16</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>181.9490544011135</x>
        <y>73.5301392746986</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>17</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>44.73393690353369</x>
        <y>183.26390711733984</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>18</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>113.77572020131659</x>
        <y>183.881464805895</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>19</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>20.491502330383504</x>
        <y>171.18604404272796</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>20</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>91.62410211738074</x>
        <y>36.780830703138264</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>21</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>28.6404313984685</x>
        <y>189.5131167921578</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>22</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>70.82020104830885</x>
        <y>138.50648568416472</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>23</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>163.46128424982302</x>
        <y>124.06345575991253</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>24</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>166.9044240461728</x>
        <y>58.616717641719895</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>25</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>138.67063111271693</x>
        <y>9.20016538613244</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>26</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>133.58973064922668</x>
        <y>139.20516549851297</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>27</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>122.18635991389657</x>
        <y>198.51381941784018</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>28</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>139.17281565976037</x>
        <y>108.33598726719778</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>29</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>125.29522680095965</x>
        <y>199.014103214468</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>30</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>86.38162953819628</x>
        <y>9.351994898355764</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>31</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>105.04832636473476</x>
        <y>159.42639186328614</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>32</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>53.55222283425285</x>
        <y>199.60254817941006</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>33</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>91.97965324499502</x>
        <y>26.059460756230912</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>34</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>151.70443560182264</x>
        <y>125.12266293137826</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>35</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>190.65971945619737</x>
        <y>97.70477265614572</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>36</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>35.53102962001584</x>
        <y>153.9859322045829</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>37</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>94.62289790233022</x>
        <y>176.21394455030537</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>38</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>177.0399075856711</x>
        <y>148.76937564167704</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>39</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>176.2794162090493</x>
        <y>169.78828332636496</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>40</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>131.91273135866876</x>
        <y>197.0665000885188</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>41</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>17.051773766894883</x>
        <y>113.2035587229797</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>42</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>12.115811030637168</x>
        <y>73.04444674755702</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>43</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>191.48089335990224</x>
        <y>136.08863692830394</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>44</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>109.07380844191425</x>
        <y>117.58659628943833</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>45</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>11.4369407086506</x>
        <y>128.87083715828078</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>46</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>110.3014718136158</x>
        <y>152.91354468069184</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>47</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>29.28896960467673</x>
        <y>152.85239474387686</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>48</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>26.11432599865258</x>
        <y>6.834841772874821</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>49</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>157.75688586826064</x>
        <y>127.22335686053039</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>50</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>6.683561338928712</x>
        <y>189.9576680322503</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>51</id>
      </interface_config>
      <motetype_identifier>moteIdentifier</motetype_identifier>
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
      <viewport>2.042496017963331 0.0 0.0 2.042496017963331 75.12751445605181 14.67622653185738</viewport>
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
TIMEOUT(13600000, timeout_func()); /* milliseconds */&#xD;
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
//f = new File("../../../examples/ipv6/multicast/simulations-bmrf-z1/log.txt");&#xD;
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


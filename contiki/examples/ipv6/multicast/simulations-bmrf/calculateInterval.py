import sys
import numpy as np
import scipy
import scipy.stats as sp
import math

pdrString = "Packet delivery ratio:"
delayString = "Average end-to-end delay:"
packetString = "Packet transmission:"
frameString = "Frame transmission:"
rxString = "Rx time:"
txString = "Tx time:"
lpmString = "LPM time:"
cpuString = "CPU time:"

def mean_confidence_interval(data, confidence = 0.95):
	a = 1.0*np.array([float(data0) for data0 in data])
	n = len(a)
	mean, std = np.mean(a), np.std(a,ddof=1)
	h = sp.norm.interval(confidence,mean,std/math.sqrt(n))
	return mean, h[1]-mean

path = sys.argv[1]
n = int(sys.argv[2])

delayData = []
pdrData = []
packetData = []
frameData = []
energyData = []

CLOCK_SECOND = 32768
RX_CONS = 56.4
TX_CONS = 52.2
LPM_CONS = 0.0015
CPU_CONS = 8.76

for i in range(0, n):
	print("reading file " + path + "/summary_results" + str(i) + ".csv")
	f = open(path + "/summary_results" + str(i) + ".csv", 'r')

	for line in f:
		#delay
		if(line.startswith(delayString)):
			delay = float(line[len(delayString)+1:])
			print("delay = " + str(delay))
			delayData.append(delay)
		
		#PDR
		if(line.startswith(pdrString)):
			pdr = float(line[len(pdrString)+1:])
			print("PDR = " + str(pdr))
			pdrData.append(pdr)

		#Packet transmissions
		if(line.startswith(packetString)):
			packet = float(line[len(packetString)+1:])
			print("Packet transmissions = " + str(packet))
			packetData.append(packet)

		#Frame transmissions
		if(line.startswith(frameString)):
			frame = float(line[len(frameString)+1:])
			print("Frame transmissions = " + str(frame))
			frameData.append(frame)

		#RX time
		if(line.startswith(rxString)):
			rxTime = float(line[len(rxString)+1:line.index(' ', len(rxString)+1)])
			print("RX Time = " + str(rxTime))

		#TX time
		if(line.startswith(txString)):
			txTime = float(line[len(txString)+1:line.index(' ', len(txString)+1)])
			print("TX Time = " + str(txTime))

		#LPM time
		if(line.startswith(lpmString)):
			lpmTime = float(line[len(lpmString)+1:line.index(' ', len(lpmString)+1)])
			print("TX Time = " + str(lpmTime))
		#CPU time
		if(line.startswith(cpuString)):
			cpuTime = float(line[len(cpuString)+1:line.index(' ', len(cpuString)+1)])
			print("TX Time = " + str(cpuTime))

	#energy
	energyData.append((rxTime*RX_CONS + txTime*TX_CONS + lpmTime*LPM_CONS + cpuTime*CPU_CONS)/(1000*CLOCK_SECOND))

f = open(path + "/results.txt", "w")

interval = mean_confidence_interval(delayData)
f.write("Average end-to-end delay: mean: " + str(interval[0]) + " interval: " + str(interval[1]) + "\n")

interval = mean_confidence_interval(pdrData)
f.write("Packet delivery ratio: mean: " + str(interval[0]) + " interval: " + str(interval[1]) + "\n")

interval = mean_confidence_interval(packetData)
f.write("Packet transmission: " + str(interval[0]) + " interval: " + str(interval[1]) + "\n")

interval = mean_confidence_interval(frameData)
f.write("Frame transmission: " + str(interval[0]) + " interval: " + str(interval[1]) + "\n")

interval = mean_confidence_interval(energyData)
f.write("Energy consumption: " + str(interval[0]) + " interval: " + str(interval[1]) + "\n")



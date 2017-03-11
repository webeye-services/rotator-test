#!/usr/bin/env python

import time
import serial
import sys

direc = {'1': 'left', '0': 'right'}
yesno = {'1': 'yes', '0': 'no' }
if __name__ == "__main__":
    ser = serial.Serial(

               port='/dev/ttyUSB0',
               baudrate = 9600,
               parity=serial.PARITY_NONE,
               stopbits=serial.STOPBITS_ONE,
               bytesize=serial.EIGHTBITS,
               timeout=1
           )

    ser.write(sys.argv[1])
    ser.flush()
    time.sleep(1)
    while True:
        ln = ser.readline().strip()
	if not ln:
             break
        cds = ln.split("/")

	if cds[1] == '22':
	    print("magnet: %s" % cds[2])
	elif cds[1] == '20':
            print("temper: %s" % cds[2])
        elif cds[1] == '21':
            print("step no: %s" % cds[2])
        elif cds[1] == '23':
            print("turn over at step no: %s" % cds[2])
        elif cds[1] == '24':
            print("begin step no: %s" % cds[2])
        elif cds[1] == '25':
            print("calibration: %s" % yesno[cds[2]])
        elif cds[1] == '26':
            print("direction: %s" % direc[cds[2]])




        else:
            print(ln)
    ser.close()

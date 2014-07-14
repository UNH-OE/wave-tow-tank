# -*- coding: utf-8 -*-
"""
Created on Thu Nov 21 03:22:51 2013

@author: Pete
"""

fw = open("S700_10_fixed.xml", "w")

with open("s300s700_10.xml") as f:
    for line in f:
        ws = len(line) - len(line.lstrip())
        fw.write(" "*ws*2 + line.lstrip())
        
fw.close()
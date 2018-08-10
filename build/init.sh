#!/bin/bash

/tmp/cplex_studio128.linux-x86-64.bin -f /tmp/response.properties
chmod u+x /tmp/cplex_studio128.linux-x86-64.bin

rm -f /tmp/cplex_studio128.linux-x86-64.bin /tmp/response.properties

rm -rf /opt/ibm/ILOG/CPLEX_Studio128/doc/ \
    /opt/ibm/ILOG/CPLEX_Studio128/opl/ \
    /opt/ibm/ILOG/CPLEX_Studio128/cpoptimizer/ \
    /opt/ibm/ILOG/CPLEX_Studio128/concert/ \
    /opt/ibm/ILOG/CPLEX_Studio128/python/ \
    /opt/ibm/ILOG/CPLEX_Studio128/swidtag/ \
    /opt/ibm/ILOG/CPLEX_Studio128/Uninstall/

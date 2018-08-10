FROM openjdk:8-jre-slim

ARG CPLEX_INSTALLER=cplex_studio128.linux-x86-64.bin

COPY ${CPLEX_INSTALLER} /tmp/cplex_studio128.linux-x86-64.bin
COPY response.properties /tmp/response.properties

RUN chmod u+x /tmp/cplex_studio128.linux-x86-64.bin
RUN /tmp/cplex_studio128.linux-x86-64.bin -f /tmp/response.properties
RUN rm -f /tmp/cplex_studio128.linux-x86-64.bin /tmp/response.properties
RUN rm -rf /opt/ibm/ILOG/CPLEX_Studio128/doc/ /opt/ibm/ILOG/CPLEX_Studio128/opl/ /opt/ibm/ILOG/CPLEX_Studio128/cpoptimizer/ /opt/ibm/ILOG/CPLEX_Studio128/concert/ /opt/ibm/ILOG/CPLEX_Studio128/python/ /opt/ibm/ILOG/CPLEX_Studio128/swidtag/ /opt/ibm/ILOG/CPLEX_Studio128/Uninstall/

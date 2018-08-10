FROM openjdk:8-jre-slim as builder

ARG CPLEX_INSTALLER=cplex_studio128.linux-x86-64.bin

COPY ${CPLEX_INSTALLER} /tmp/cplex_studio128.linux-x86-64.bin
ADD response.properties /tmp/response.properties
ADD build/init.sh /tmp/init.sh

RUN chmod u+x /tmp/init.sh
RUN /tmp/init.sh
RUN rm -f /tmp/init.sh




FROM openjdk:8-jre-slim

COPY --from=builder /opt/ibm /opt/ibm

FROM apache/spark-py:v3.4.0
#RUN pip install pyspark==3.3.0 delta-spark==2.3.0

USER root 
#RUN apt-get update && apt-get install -y python3-pip

RUN pip install pyspark==3.4.0 delta-spark==2.4

ENV PYSPARK_PYTHON python3

COPY ./spark-latest/jars/*.jar /opt/spark/jars/

# RUN apt-get update && \
#       apt-get -y install sudo

# RUN adduser root sudo
# RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER root
#RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
#RUN export JAVA_HOME=/opt/java/openjdk

CMD /bin/bash

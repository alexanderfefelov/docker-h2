FROM java:8-jre
ENV H2_VERSION 2014-04-05
ENV H2_PARENT_DIR /opt
RUN wget -q http://h2database.com/h2-$H2_VERSION.zip \
  && unzip -qq h2-$H2_VERSION.zip \
  && mv h2 $H2_PARENT_DIR \
  && rm -f h2-$H2_VERSION.zip \
EXPOSE 9092
CMD java -classpath $H2_PARENT_DIR/h2/bin/*.jar org.h2.tools.Server -tcp -tcpAllowOthers -baseDir /h2

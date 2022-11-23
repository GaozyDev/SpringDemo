FROM williamyeh/java8
EXPOSE 8080
ENV TZ=Asia/Shanghai
RUN ln -sf /usr/share/zoneinfo/{TZ} /etc/localtime && echo '{TZ}' > /etc/timezone
ADD ./target/SpringDemo-0.0.1-SNAPSHOT.jar /SpringDemo-0.0.1-SNAPSHOT.jar
RUN bash -c 'touch /SpringDemo-0.0.1-SNAPSHOT.jar'
ENTRYPOINT ["java", "-jar", "/SpringDemo-0.0.1-SNAPSHOT.jar"]
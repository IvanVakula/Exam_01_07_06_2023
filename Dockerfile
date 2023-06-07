FROM ubuntu

LABEL author = "Vakula Ivan"

ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get install qtbase5-dev -y 
RUN apt-get install qt5-qmake 
RUN apt-get install build-essential -y

WORKDIR /root/
RUN mkdir Vakula_221_353
WORKDIR /root/Vakula_221_353/
COPY *.cpp /root/Vakula_221_353/
COPY *.h /root/Vakula_221_353/
COPY *.pro /root/Vakula_221_353/

RUN qmake hallServer.pro
RUN make

ENTRYPOINT ["./hallServer"]

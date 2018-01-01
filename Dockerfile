FROM ubuntu:zesty
RUN apt-get update && apt-get install -y software-properties-common python-software-properties
RUN apt-get install -y curl
RUN apt-get install -y python3-pip
RUN pip3 install cpplint
RUN pip3 install pyyaml
RUN apt-get install -y git flex bison cmake
RUN cd opt && git clone https://github.com/doxygen/doxygen.git && cd doxygen && mkdir build; cd build && cmake -G "Unix Makefiles" .. && make && make install
RUN apt-get install -y default-jdk
RUN pip3 install openpyxl
RUN add-apt-repository ppa:ubuntu-toolchain-r/test
RUN apt-get update
RUN apt-get install -y gcc-7 g++
RUN pip3 install gcovr

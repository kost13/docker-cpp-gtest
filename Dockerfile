FROM kost13/cpp-base:latest

ARG GTEST_VERSION=release-1.10.0

RUN git clone https://github.com/google/googletest.git  && \
cd googletest && \
git checkout ${GTEST_VERSION}

RUN  cd googletest && \
mkdir build && \
cd build && \
cmake -GNinja .. && \
ninja && \
ninja install && \
cd / && \
rm -rf googletest

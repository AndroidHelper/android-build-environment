FROM ubuntu:14.04
MAINTAINER JianyingLi <lijy91@foxmail.com>

RUN dpkg --add-architecture i386                                    && \
    apt-get update                                                  && \
    apt-get install -y wget unzip                                   && \
    apt-get install -y libncurses5:i386 libstdc++6:i386 zlib1g:i386 && \
    apt-get clean

# Install Java 8
RUN wget -q --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-x64.tar.gz && \
    tar -xzf jdk-8u144-linux-x64.tar.gz -C /usr/local && \
    rm jdk-8u144-linux-x64.tar.gz

# Export JAVA_HOME variable
ENV JAVA_HOME /usr/local/jdk1.8.0_144
ENV PATH $PATH:$JAVA_HOME/bin

# Install Android SDK
RUN wget -q https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip -O android-sdk-tools.zip && \
    unzip -q android-sdk-tools.zip -d /usr/local/android-sdk-linux && \
    rm android-sdk-tools.zip

# Export ANDROID_HOME variable
ENV ANDROID_HOME /usr/local/android-sdk-linux
ENV PATH $PATH:$ANDROID_HOME/tools
ENV PATH $PATH:$ANDROID_HOME/platform-tools
ENV PATH $PATH:$ANDROID_HOME/build-tools/26.0.1

RUN sdkmanager \
    "platforms;android-26" \
    "build-tools;26.0.1" \
    "extras;android;m2repository" \
    "extras;google;m2repository"

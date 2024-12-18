ARG ARCH=amd64

FROM --platform=$ARCH node:lts

LABEL description="Node LTS Docker image with Chrome (google-chrome-stable)"
LABEL website="https://github.com/rbonestell/docker-node-lts-chrome"


# Download Google's Linux signing public key and add to atp
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

# Add Google Chrome for Debian to apt sources
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list

# Update apt packages
RUN apt-get update -qqy

# Install stable Chrome
RUN apt-get -y install google-chrome-stable
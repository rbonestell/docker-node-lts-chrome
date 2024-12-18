FROM node:lts
LABEL description="Node LTS Docker image with Chrome (google-chrome-stable)"

# Install Stable Chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list
RUN apt-get update -qqy
RUN apt-get install -y google-chrome-stable
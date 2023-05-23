FROM vm/ubuntu:18.04

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash && \
    apt install nodejs && \
    rm -f /etc/apt/sources.list.d/nodesource.list
RUN npm install -g http-server

COPY . .
RUN echo 'hello' > hello.html

RUN BACKGROUND http-server -p 3000
EXPOSE 3000

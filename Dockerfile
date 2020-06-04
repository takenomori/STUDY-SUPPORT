FROM ruby:2.6.3
#日本語対応
ENV LANG C.UTF-8
#作業用ディレクトリを作成
ENV ROOT_PATH /app
RUN mkdir -p $ROOT_PATH
WORKDIR $ROOT_PATH
#Railsアプリに必要なパッケージをインストールする
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
        && apt-get install -y nodejs build-essential libpq-dev\
     && rm -rf /var/lib/apt/lists/*
#Rspec用chromedriver
RUN apt-get update && apt-get install -y unzip && \
    CHROME_DRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE` && \
    wget -N http://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip -P ~/ && \
    unzip ~/chromedriver_linux64.zip -d ~/ && \
    rm ~/chromedriver_linux64.zip && \
    chown root:root ~/chromedriver && \
    chmod 755 ~/chromedriver && \
    mv ~/chromedriver /usr/bin/chromedriver && \
    sh -c 'wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -' && \
    sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' && \
    apt-get update && apt-get install -y google-chrome-stable

ADD Gemfile $ROOT_PATH
ADD Gemfile.lock $ROOT_PATH
RUN gem install bundler
RUN bundle install


ADD . $ROOT_PATH
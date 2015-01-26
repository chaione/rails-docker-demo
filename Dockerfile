FROM rails:onbuild

ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install

RUN mkdir /app
WORKDIR /app
ADD . /app

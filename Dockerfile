FROM ruby:2.5.5

ENV RAILS_ENV=production

RUN apt-get -qq update \
    && apt-get install -y --no-install-recommends  \
                                              wget \
                                              unzip \
                                              curl \
                                              git \
                                              redis-server \
                                              ghostscript \
                                              imagemagick \
                                              libreoffice \
                                              nodejs \
                                              ffmpeg \
                                              libpq5 \
                                              libpq-dev \
                                              file \
                                              yarn

RUN update-rc.d redis-server enable

RUN useradd -ms /bin/bash vesalius

USER vesalius

WORKDIR /home/vesalius

RUN wget http://projects.iq.harvard.edu/files/fits/files/fits-1.0.5.zip \
    && unzip fits-1.0.5.zip \
    && rm fits-1.0.5.zip \
    && mv fits-1.0.5 fits \
    && chmod a+x fits/fits.sh

WORKDIR /home/vesalius

#RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
#    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
#    apt-get update && sudo apt-get install yarn

RUN gem install rails -v 5.1.6

RUN git clone https://cppdigital:cppdigital25@github.com/cppdigital/vesalius

WORKDIR /home/vesalius/vesalius

RUN bundle install --without developement:test

#add dummy value for secret key as per https://github.com/rails/rails/issues/32947
#RUN SECRET_KEY_BASE=1 RAILS_ENV=production bundle exec rake assets:precompile

#RUN SECRET_KEY_BASE=1 bundle exec rake db:migrate

EXPOSE 3000

#CMD bin/boot

CMD bundle exec rails s -p 3000 -b '0.0.0.0' -e production
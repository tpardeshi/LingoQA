FROM ubuntu:latest

MAINTAINER Twinkle Pardeshi <twinkle.pardeshi@gmail.com>

RUN apt-get -y update && \
    echo "9\n3\n" | apt-get install -y libxslt1-dev && \
    apt-get install -y ruby gcc ruby-full make git vim libmysqlclient-dev mariadb-server libxml2 libxml2-dev && \
    gem install rails bundler && \
    git clone https://github.com/tpardeshi/lingoqa.git -b final_backend_with_encrypted_creds

WORKDIR lingoqa

RUN sed -i s/"ruby '2.6.3'"/"ruby '2.7.0'"/ Gemfile && \
    bundle update --bundler && \
    echo '123456677956fgdsfg675g54g67uy5re' > config/credentials/development.key && \
    sed -i s/"\/var\/lib\/mysql\/mysql.sock"/"\/var\/run\/mysqld\/mysqld.sock"/ config/database.yml && \
    /etc/rc2.d/S01mysql start && \
    bundle exec rake db:create && \
    bundle exec rake db:schema:load

EXPOSE 3000

ENTRYPOINT ["rails"]
CMD ["s", "--binding=0.0.0.0"]
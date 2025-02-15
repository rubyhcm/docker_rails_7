# Dockerfile.rails
FROM ruby:3.2.2 AS rails-toolbox

# Default directory
ENV INSTALL_PATH /opt/app
RUN mkdir -p $INSTALL_PATH

# Install rails
RUN gem install rails bundler
#RUN chown -R user:user /opt/app
WORKDIR /opt/app

# Run a shell
CMD ["/bin/sh"]

#docker build -t rails-toolbox -f Dockerfile .  ==> to build image
#docker run -it -v $PWD:/opt/app rails-toolbox rails new --skip-bundle drkiq ==> to create project with name is 'drkiq'

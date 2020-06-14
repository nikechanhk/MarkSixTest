# Dockerfile
# Use ruby image to build our own image
FROM ruby:2.6.6
# We specify everything will happen within the /app folder inside the container
WORKDIR /app
# We copy these files from our current application to the /app container
COPY Gemfile Gemfile.lock ./
# We install all the dependencies

RUN gem install bundler:2.1.4

RUN bundle install
# We copy all the files from our current application to the /app container
COPY . .
# We expose the port
EXPOSE 8080
# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
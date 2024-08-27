FROM ruby:3.1

# # Install build dependencies
# RUN apk add --no-cache build-base nodejs npm git

# Set the working directory
WORKDIR /usr/src/app

# Copy the Gemfile and install dependencies
COPY Gemfile Gemfile
RUN bundle install

# Copy the rest of the application code
# COPY   
#  . .

# Build the Jekyll site
RUN jekyll build

# Expose the port Jekyll will run on
EXPOSE 4000

# Start the Jekyll server
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
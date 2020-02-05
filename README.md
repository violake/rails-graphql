# Overview
This is a test project for GraphQL API with Rails.

## Ruby version
2.7.0

## Rails version
6.0.2.1

## GraphQL version
graphql-ruby 1.10.2


## How to run in docker

```base
# build images
./bootstrap

# start api server
docker-compose up listing-service

```

## GraphQL Client

install `graphql playground`

choose [URL ENDPOINT]

input 'http://localhost:3001/graphql'

And go nuts




## Changes to Rails 5

### new load engine

ref: https://medium.com/cedarcode/understanding-zeitwerk-in-rails-6-f168a9f09a1f

### no longer use SECRET_KEY_BASE

ref: https://blog.saeloun.com/2019/10/10/rails-6-adds-support-for-multi-environment-credentials.html

config/credentials.yml.enc
config/master.key


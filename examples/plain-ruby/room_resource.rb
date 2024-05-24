require_relative '../helpers'

# An executable specification that demonstrates how to use the NylasV2 Ruby SDK to interact with the API. It
# follows the rough structure of the [NylasV2 API Reference](https://docs.nylas.com/reference).
api = NylasV2::API.new(app_id: ENV['NYLAS_APP_ID'], app_secret: ENV['NYLAS_APP_SECRET'],
                     access_token: ENV['NYLAS_ACCESS_TOKEN'])

# Retrieving a list of room resources
demonstrate { api.room_resources.map(&:to_h) }

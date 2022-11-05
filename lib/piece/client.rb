# frozen_string_literal: true

require "faraday"

module Piece
  class Client
    BASE_URL = "https://api.waifu.pics/"
    def initialize; end

    def connection
      @connection ||= Faraday.new do |f|
        f.url_prefix = BASE_URL
        f.request :json
        f.response :json, content_type: "application/json"
      end
    end

    def hi
      "Hi i m working so late!~!\u{1F62D}"
    end
  end
end

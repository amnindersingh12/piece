# frozen_string_literal: true

require "faraday"

module Piece
  class Client
    BASE_URL = "https://api.waifu.pics/"
    ENDPOINTS = {
      sfw: %w[waifu neko shinobu bully cry hug kiss lick pat smug highfive nom bite slap wink poke dance cringe
              blush happy],
      nsfw: %w[waifu neko trap blowjob]
    }

    def initialize; end

    def connection
      @connection ||= Faraday.new do |f|
        f.url_prefix = BASE_URL
        f.request :json
        f.response :json, content_type: "application/json"
      end
    end

    def get(value)
      type, endpoint = value.split("/")
      return unless ENDPOINTS.include?(type.to_sym)

      endpoint = ENDPOINTS[type.to_sym][rand(0...ENDPOINTS[type.to_sym].length)] if endpoint == "random"
      value = "#{type}/#{endpoint}"
      connection.get(value).body
    end

    def inspect
      "~~~Hi i m working so late!~!\u{1F62D}~~~"
    end
  end
end

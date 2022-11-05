# frozen_string_literal: true

require_relative "piece/version"

module Piece
  autoload :Client, "piece/ client"
  autoload :Error, "piece/error"
end

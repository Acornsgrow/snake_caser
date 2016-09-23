# frozen_string_literal: true
require "snake_caser/version"

module SnakeCaser
  def self.lower_snake_case(string)
    string.gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2')
          .gsub(/([a-z])([A-Z])/, '\1_\2')
          .gsub(/[^\w]/, "_")
          .downcase
  end
end

# frozen_string_literal: true

module Ebooks
  class ApplicationService
    def initialize(...); end

    def self.call(...)
      new(...).call
    end

    def self.call!(...)
      new(...).call!
    end
  end
end

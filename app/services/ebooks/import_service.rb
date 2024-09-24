# frozen_string_literal: true

module Ebooks
  class ImportService < ApplicationService
    def initialize(csv_path:, reader_service: Ebooks::CsvReaderService, creator_service: Ebooks::CreatorService)
      @csv_path = csv_path
      @reader_service = reader_service
      @creator_service = creator_service
      super
    end

    def call
      ebook_collection = @reader_service.call(@csv_path)
      @creator_service.call(ebook_collection)
    end
  end
end

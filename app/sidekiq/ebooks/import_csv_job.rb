# frozen_string_literal: true

module Ebooks
  class ImportCsvJob
    include Sidekiq::Job

    def perform(csv_path)
      Ebooks::ImportService.call(csv_path:)
      File.delete(csv_path)
    end
  end
end

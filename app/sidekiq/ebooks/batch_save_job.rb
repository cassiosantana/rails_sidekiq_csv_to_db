# frozen_string_literal: true

module Ebooks
  class BatchSaveJob
    include Sidekiq::Job
    sidekiq_options queue: :batch_save

    def perform(batch, creator_service: Ebooks::CreatorService)
      creator_service.call(batch)
    end
  end
end

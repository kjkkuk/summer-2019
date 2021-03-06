# frozen_string_literal: true

module Commands
  class CheckOut
    def self.perform(payload, &block)
      new(payload).perform(&block)
    end

    attr_reader :payload, :message, :save_context

    def initialize(payload)
      @payload = payload
      @message = :send_photo
      @save_context = true
    end

    def perform(&_block)
      check_photo
      check_location
      update_user if message == :checked_out
      yield message, save_context if block_given?
    end

    private

    def check_photo
      process_photo && set_geolocation_message if photo?
    end

    def check_location
      process_location && set_checked_in_message if geo?
    end

    def update_user
      user.update(checkin_datetime: Time.now, checked_in: false)
    end

    def user
      User.find(telegram_id: telegram_id).first
    end

    def process_location
      LocationSaver.perform(location, telegram_id)
    end

    def process_photo
      PhotoSaver.perform(file_id, telegram_id)
    end

    def set_geolocation_message
      @message = :send_location
      @save_context = true
    end

    def set_checked_in_message
      @message = :checked_out
      @save_context = false
    end

    def telegram_id
      @telegram_id ||= payload.dig('chat', 'id')
    end

    def geo?
      payload.key? 'location'
    end

    def location
      payload['location']
    end

    def file_id
      payload.dig('photo', -1, 'file_id')
    end

    def photo?
      payload.key? 'photo'
    end
  end
end

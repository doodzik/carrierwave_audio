require 'ruby-audio_info'

module Info
  module ClassMethods
    def audio_info
      cache_stored_file! if !cached?
      AudioInfo.open(current_path) do |info|
        yield
      end
    end
  end
end

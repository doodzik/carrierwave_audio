# CarrierwaveAudio

audio plugin for Carrierwave

## Installation

install the ruby-sox https://github.com/TMXCredit/ruby-sox requirements on your system

Add this line to your application's Gemfile:

    gem 'carrierwave_audio'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install carrierwave_audio

## Usage

```

class ExampleUploader < CarrierWave::Uploader::Base

  include CarrierWave::Audio::Info

  process :audio_info do |info|
    model.duration = info.length
  end

end

```

## Roadmap

add audio file type conversion

```

class ExampleUploader < CarrierWave::Uploader::Base

  include CarrierWave::Audio::Modifier

  # converts the audio file into the given types
  # if the uploaded file is present it skips the conversion
  # and stores it as it is
  process audio_convert: [:mp3, :ogg]

end

```

## Contributing

1. Fork it ( http://github.com/doodzik/carrierwave_audio/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

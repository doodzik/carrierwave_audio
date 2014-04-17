=begin
require 'ruby-sox'

module Modifier
  module ClassMethods
    def convert(to_formats)
      process convert: to_formats
    end
  end

  def convert(to_formats)
    cache_stored_file! if !cached?
    formats(to_formats, current_path).map do |format|
      convert_file(format, current_path)
    end
  end

  def formats(to_formats, current_path)
    to_formats.map!(&:downcase)
    file_ext = File.extname(current_path).downcase
    to_formats.delete!(file_ext)
  end

  def convert_file(format, current_path)
    Sox::Cmd.new().add_input(current_path).set_output("#{current_path}.#{format}").run
  end
end
=end

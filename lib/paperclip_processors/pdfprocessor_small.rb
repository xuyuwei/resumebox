module Paperclip
  class PdfprocessorSmall < Processor
 
    attr_accessor :current_geometry, :target_geometry, :format, :whiny, :convert_options, :source_file_options
 
    def initialize file, options = {}, attachment = nil
      super
      @file                = file
      @format              = options[:format]
 
      @current_format      = File.extname(@file.path)
      @basename            = File.basename(@file.path, @current_format)
    end
 
    def make
      src = @file
      dst = Tempfile.new([@basename, @format ? ".#{@format}" : ''])
      dst.binmode
 
      begin
        parameters = []
        parameters << "-density 300"
        parameters << ":source"
        parameters << "-quality 100 -resize 20%"
        parameters << ":dest"
 
        parameters = parameters.flatten.compact.join(" ").strip.squeeze(" ")
        
        success = Paperclip.run("convert", parameters, :source => "#{File.expand_path(src.path)}", :dest => File.expand_path(dst.path))
      rescue PaperclipCommandLineError => e
        raise PaperclipError, "There was an error processing the thumbnail for #{@basename}" if @whiny
      end
      dst
    end
  end
end
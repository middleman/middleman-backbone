module Middleman
  module Backbone
    class Template < Middleman::Templates::Base
      class_option "css_dir", 
        :default => "css", 
        :desc    => 'The path to the css files'
      class_option "js_dir", 
        :default => "js", 
        :desc    => 'The path to the javascript files'
      class_option "images_dir", 
        :default => "img", 
        :desc    => 'The path to the image files'
        
      def self.source_root
        File.dirname(__FILE__)
      end
  
      def build_scaffold
        template "shared/config.tt", File.join(location, "config.rb")
        directory "template/source", File.join(location, "source")
        empty_directory File.join(location, "source")
      end
    end
  end
end

Middleman::Templates.register(:backbone, Middleman::Backbone::Template)
# require modules here
require "yaml"
require 'pry'

def load_library(path)
  # code goes here
  library = {}
  data = YAML.load_file(path)
  data.each do |key, value|
    library[key] = {}
    library[key][:english] = value[0]
    library[key][:japanese] = value[1]
  end
  library
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(path, emot_in)
  # code goes here
  data = load_library(path)
  data.each do |key, value|
    value.each do |lang, emot|
      if emot == emot_in
        return key
      end
    end
  end
  return "Sorry, that emoticon was not found"
  
  
end
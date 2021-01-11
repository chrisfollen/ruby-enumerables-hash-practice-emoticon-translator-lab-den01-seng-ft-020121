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

puts load_library("./lib/emoticons.yml")

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
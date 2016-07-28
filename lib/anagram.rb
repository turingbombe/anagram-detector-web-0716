# Your code goes here!
require 'pry'
class Anagram
    attr_accessor :split_word, :split_array, :split_array_word
    def initialize(word)
        @word = word
    end

    def match(array)
        @match = array
        self.split_word = word_splitter(@word)
        compare 
    end

    def word_splitter(word)
        word.split(//)
    end

    def compare
        @match.select do |array_word|
            split_array_word = word_splitter(array_word)
             if self.split_word.sort == split_array_word.sort
                array_word
            end
        end
    end

end
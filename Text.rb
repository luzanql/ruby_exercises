class Text
  attr_accessor :text

  def initialize(big_text)
    @text = big_text
  end

  def count_vowels
    text.split("").select { |letter| ['a','e','i','o','u'].include? letter}.size
  end

  def count_words
    text.split(" ").size
  end

  def get_length
    text.length
  end

  def get_palindromes
    text.split(" ").select { |word| hpalidrome?(word) }
  end

  def get_biggest_word
    biggest_count = 0
    biggest_word = ''
    text.split(" ").each do |word|
      if word.length > biggest_count
        biggest_count = word.length
        biggest_word = word
      end
    end
    biggest_word
  end

  def sort_alphabetically
    # sort seems to order by ascii value? ordinal value? 
    # that is why downcase is used at first
    text.downcase.split(" ").sort.map { |w| w}.join(" ")
  end

  # every n letters insert a break
  def format_text(n)
    if (text.length < n)
      return text
    end
    count = 0
    formatted_text = ''
    text.split("").each do |letter|
      if count == n
        formatted_text += "\n"
        count = 0
      else 
        formatted_text += letter
        count = count + 1
      end
    end 
    formatted_text
  end

  private

  def hpalidrome?(text)
    text == text.reverse
  end 
end


text = Text.new("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id dictum purus, non pellentesque ligula. Etiam non quam a nunc porta facilisis nec id neque. Curabitur rutrum ipsum ut eros faucibus, id rhoncus metus aliquam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin ultrices ultricies nunc, sit amet fringilla dolor scelerisque eget. Vestibulum et mi mattis, congue sem vitae, mollis elit. Nulla accumsan lacus nec molestie iaculis. Phasellus congue odio a nunc tincidunt, et suscipit dui lacinia. Proin efficitur eu tellus in rutrum. Etiam id sapien placerat, suscipit nunc in, dapibus leo. Morbi ac dui sagittis, rhoncus lacus ut, lacinia nisl")
text2 = Text.new("hello acidodesocirribunocleico DNA I am trying ruby anana")
puts text.count_vowels
puts text2.count_vowels
puts text2.count_words
puts text.get_length
puts text2.get_palindromes
puts text2.get_biggest_word
puts text2.sort_alphabetically
print text2.format_text(3)
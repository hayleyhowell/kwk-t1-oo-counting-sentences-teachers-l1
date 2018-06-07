require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    period = self.split(".")
    question = self.split("?")
    exclaim = self.split("!")
    period.count + question.count + exclaim.count
  end
end
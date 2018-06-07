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
    period.delete("")
    question = self.split("?")
    question.delete("")
    exclaim = self.split("!")
    exclaim.delete("")
    if sentence?
      per = period.count - 1 
    else 
      per = period.count
    end
    if question?
      que = question.count - 1 
    else 
      que = question.count 
    end
    if exclamation?
      exc = exclaim.count - 1 
    else 
      exc = exclaim.count 
    end
    per + que + exc 
  end
end
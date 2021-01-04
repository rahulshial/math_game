class Question

  attr_reader :answer

  def initialize
    @answer = -1
  end

  def gen_question
    num = Random.new
    first_num = num.rand(20)
    second_num = num.rand(20)
    @answer = first_num + second_num
    "What is #{first_num} + #{second_num}?"
  end

end

class Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end

end




p1 = "What is color of apples?\n(a)red\n(b)purple\n(c)indigo\n(d)orange"
p2 = "What is color of bananas?\n(a)red\n(b)yellow\n(c)indigo\n(d)orange"
p3 = "What is color of oranges?\n(a)red\n(b)purple\n(c)indigo\n(d)orange"

questions = [
    Question.new(p1, "a"),
    Question.new(p2, "b"),
    Question.new(p3, "d")
]

def run_test(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer
            score +=1
        end
    end

    case score
    when 3
        puts("You are a genius, awesome " + score.to_s + "/" + questions.length().to_s + "score")
    when 2
        puts("You are a scholar , great " + score.to_s + "/" + questions.length().to_s + "score")
    when 1
        puts("You might need to review your fruits, you scored " + score.to_s + "/" + questions.length().to_s)
    when 0
        puts("I think you might need assistance, don't be afraid to reach out, you scored " + score.to_s + "/" + questions.length().to_s)
    end
end

run_test(questions)
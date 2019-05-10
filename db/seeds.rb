User.destroy_all
Question.destroy_all
Answer.destroy_all
Quiz.destroy_all

User.create :username => 'ben', :password_digest => 'chicken'

require 'httparty'

difficulties = %w( easy medium hard )
categories_index = (9..40)

categories_index.each do |category|

  difficulties.each do |difficulty|

    url = "https://opentdb.com/api.php?amount=10&category=#{ category }&difficulty=#{ difficulty }&type=multiple"

    document = HTTParty.get url 

    break if document["response_code"] == 1 ## this is the api code for no content, so just break

    question_array = document["results"]

    quiz = Quiz.create :category => question_array[0]["category"], :difficulty => difficulty

    puts "quizz entered"

    question_array.each do |question| 

      quest = Question.create :content => question["question"]
      quiz.questions << quest 
      puts "question entered"
      # create a full array of answers the questions
      answers = question["incorrect_answers"]
      answers.unshift question["correct_answer"]

      answers.each_with_index do |answer, index|
        if index == 0
          a1 = Answer.create :answer => answer, :correct => true
        else
          a1 = Answer.create :answer => answer, :correct => false 
        end
          quest.answers << a1 
          puts "answers entered"
      end
      sleep(2)
    end
  end
end

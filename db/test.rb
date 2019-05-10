require 'httparty'


# url = "https://en.wikipedia.org/wiki/".concat(team)
url = "https://opentdb.com/api.php?amount=10&category=8&difficulty=medium&type=multiple"
difficulties = %w( easy medium hard )
categories_index = (9..40)



"https://opentdb.com/api.php?amount=10&category=8&difficulty=medium&type=multiple"

# Fetch and parse HTML document
document = HTTParty.get url 

puts document["response_code"]  == 1





## then loop through these 
# difficulty = question_array["difficulty"]
# question = question_array["question"]
# correct_answer = question_array["correct_answer"]
# incorrect_answers =  1 #an array of answers []

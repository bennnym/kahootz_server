# == Schema Information
#
# Table name: quizzes
#
#  id         :bigint(8)        not null, primary key
#  category   :text
#  difficulty :text
#

class Quiz < ApplicationRecord
 has_many :questions
 has_many :games

end

# == Schema Information
#
# Table name: questions
#
#  id      :bigint(8)        not null, primary key
#  content :text
#  quiz_id :integer
#

class Question < ApplicationRecord
  belongs_to :quiz, :optional => true 
  has_many :answers 
end

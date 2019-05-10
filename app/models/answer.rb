# == Schema Information
#
# Table name: answers
#
#  id          :bigint(8)        not null, primary key
#  answer      :text
#  correct     :boolean
#  question_id :integer
#

class Answer < ApplicationRecord
  belongs_to :questions, :optional => true 
end

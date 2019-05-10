# == Schema Information
#
# Table name: players
#
#  id             :bigint(8)        not null, primary key
#  nickname       :string
#  entered_answer :boolean
#  score          :integer
#  game_id        :integer
#  streak         :integer
#  last_correct   :boolean
#  answer         :string
#

class Player < ApplicationRecord
  belongs_to :game, :optional => true 
end

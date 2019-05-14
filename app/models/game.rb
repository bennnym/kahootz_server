# == Schema Information
#
# Table name: games
#
#  id :bigint(8)        not null, primary key
#

class Game < ApplicationRecord
  has_many :players
  belongs_to :quiz, :optional => true
end

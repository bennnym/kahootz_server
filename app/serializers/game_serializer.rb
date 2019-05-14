class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :quiz_id
  has_many :players
end

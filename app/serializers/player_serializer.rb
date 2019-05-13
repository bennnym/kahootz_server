class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :nickname, :created_at
end

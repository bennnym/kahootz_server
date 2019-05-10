# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :text
#  password_digest :text
#

class User < ApplicationRecord
  has_secure_password

end

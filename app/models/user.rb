class User < ApplicationRecord
  validates :name, {length: {maximum: 10}}
end

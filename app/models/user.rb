class User < ApplicationRecord
    has_many :tweets, dependent: :destroy
    has_many :liks, dependent: :destroy
    has_many :like_tweets, through: :likes, source: :tweet
end

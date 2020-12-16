class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :user_type, :candles
  
  has_many :reviews
  # has_many :candles, through: :purchases
  has_many :purchases

  # def candles
  #   object.purchases.candles.map{|candle| candle.candle}
  # end
end

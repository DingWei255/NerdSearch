class User < ApplicationRecord
  has_many :cryptos
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauth
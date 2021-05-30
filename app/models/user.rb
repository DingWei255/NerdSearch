class User < ApplicationRecord
  has_many :cryptos
  # Include default devise modules. Others available are:
  # 
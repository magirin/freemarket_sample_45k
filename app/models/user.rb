class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reputations
  has_many :comments
  has_many :products
  has_many :sold_products
  has_many :credit_cards


  # VALID_KANJI = /\A[一-龥]+\z/
  # validates :kanji_name, format: { 
  #   with: VALID_KANJI 
  #   message: "漢字のみで入力して下さい" 
  # }

  VALID_KANA = /\A[\p{katakana}]+\z/
  validates :kana_name, format: { 
    with: VALID_KANA,
    message: "全角カタカナのみで入力して下さい" 
  }

end

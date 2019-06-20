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


  VALID_KANJI =  /\A[一-龥]+\z/
  validates :kanji_name, presence: true, format: { with: VALID_KANJI }

  VALID_KANA =  /\A[ァ-ヶー－]+\z/
  validates :kana_name, presence: true, format: { with: VALID_KANA }

end

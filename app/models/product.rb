class Product < ApplicationRecord
    enum shipping_price: [['送料込み（出品者負担）', 1], ['着払い（購入者負担）', 2]]
    enum shipping_way: [['未定',""], ['クロネコヤマト', 1], ['ゆうパック', 2],['ゆうメール', 3]]
    enum shipping_date: [['1~2日で発送',"1"],['2~3日で発送',"2"],['4~7日で発送',"3"]]
    belongs_to :user
    has_one :bland
    has_many :categorys
    has_many :images
    has_many :productimages
    has_many :comments
end

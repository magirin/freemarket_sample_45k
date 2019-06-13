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

北海道
青森県
岩手県
宮城県
秋田県
山形県
福島県
茨城県
栃木県
群馬県
埼玉県
千葉県
東京都
神奈川県
新潟県
富山県
石川県
福井県
山梨県
長野県
岐阜県
静岡県
愛知県
三重県
滋賀県
京都府
大阪府
兵庫県
奈良県
和歌山県
鳥取県
島根県
岡山県
広島県
山口県
徳島県
香川県
愛媛県
高知県
福岡県
佐賀県
長崎県
熊本県
大分県
宮崎県
鹿児島県
沖縄県

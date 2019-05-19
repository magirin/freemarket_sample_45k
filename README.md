# README

# DB設計

***
***

## User Table
| Column | Type| Option |
| :--- | :---: | :---: |
| id | intger | null:false |
| name | string | null:false |
| kana_name | string | null:false |
| nickname | string | null:false |
| birth_of_date | integer | null:false |
| password | integer | null:false |
| prefecture | string | null:false |
| address | string | null:false |
| profile | string | null:false |
| mail | string |  unique:ture |
| credit_number | integer | unique:true,null:false |
| credit_security_number | integer | char(4) |
| credit_expire_date | integer |null:false |
| phone_number | integer | null:false |


### Association
has_many :reputations
has_many :comments

***
***

## Reputatin Table
| Column | Type| Option |
| :--- | :---: | :---: |
| id | intger | null:false |
| user_id | integer | null:false |
| status | integer | null:false |

### Association
belongs_to :user

***
***


## Product Table
| Column | Type| Option |
| :--- | :---: | :---: |
| id | intger | null:false |
| name | string | null:false,VARCHAR(40) |
| price | integer | null:false, CHAR(9999999) |
| size | string | nul:false |
| description | string | null:false,VARCHAR(1000) |
| favorite | integer | null:false |
| prodution_qiality | string | null:false |
| shipping_way | string | null:false |
| shipping_price| integer | null:false|
| shipping_area | string | null:false |
| detes of shipping | integer | null:false  |
| product_status | string | null:false |
| user_id | integer | null:false |
| bland_id | integer | null:ture |
| category_id | integer | null:false |
| image_id| integer | null:false|

### Association
- belongs_to :user
- has_one :bland
- has_many :categorys
- has_many :images

***
***

## ProductIMage Table
| Column | Type| Option |
| :--- | :---: | :---: |
| id | intger | null:false |
| pic1 | integer | null:false |
| pic2 | integer | null:ture |
| pic3 | integer | null:ture |
| pic4 | integer | null:ture |
| pic5 | integer | null:ture |
| pic6 | integer | null:ture |
| pic7 | integer | null:ture |
| pic8 | integer | null:ture |
| pic9 | integer | null:ture |
| pic10 | integer | null:ture |

### Association
- belongs_to :product

***
***

## Bland Table
| Column | Type| Option |
| :--- | :---: | :---: |
| id | intger | null:false |
| parent_id | integer | null:true |
| name | string | null:false,index:true |

### Association
- belongs_to :product

***
***

## Category Table
| Column | Type| Option |
| :--- | :---: | :---: |
| id | intger | null:false |
| parent_id | integer | null:true |
| name | string | null:false ,index:true|

### Association
- belongs_to :product

***
***
## Comment Table
| Column | Type| Option |
| :---: | :---: | :---: |
| id | intger | null:false |
| comment | string | null:false |
| user_id | integer | null:false |
| product_id | integer | null:false |

### Association
- belongs_to :user 
- belongs_to :product

***
***

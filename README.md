## user table
|Column|Type|Options|
|------|----|-------|
|mail|string|null: false, unique: true|
|password|string|null: false|
|name|string|null: false|
|member|string|-------|
|profile|string|-------|
|works|string|-------|
|avatar|string|-------|


*** association
- user has_many prototypes
- user has_many comments
- user has_many likes

## prototypes table
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|user_id|string|null: false|
|catch_copy|string|null: false|
|concept|string|null: false|
|created_at|string|-------|

### association
- prototype has_many images
- prototype has_many likes
- prototype has_many comments
- prototype belongs_to :user

## images table
|Column|Type|Options|
|------|----|-------|
|status|integer|null:false,default:main|
|image|string|null: false|
|prototype_id|string|null: false|

### association
- image belongs_to prototype

## likes table
|Column|Type|Options|
|------|----|-------|
|user_id|string|null: false|
|prototype_id|string|null: false|

### association
- like belongs_to user
- like belongs_to prototype

## comments table
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|string|null: false|
|prototype_id|string|null: false|

### association
- comment belongs_to prototype
- comment belongs_to user
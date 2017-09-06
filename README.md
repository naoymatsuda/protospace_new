## users table
### column
- mail string
- password string
- name string
- member strig
- profile string
- works string
- avatar string

### association
- user has_many prototypes
- user has_many comments
- user has_many likes

## prototypes table
### column
- title string
- user_id references
- catch_copy string
- concept string
- created_at timestamp

### association
- prototype has_many images
- prototype has_many likes
- prototype has_many comments

## images table
### column
- status integer
- image string
- prototype_id references

### association
- image belongs_to prototype

## likes table
### column
- user_id references
- prototype_id references

### association
- like belongs_to user
- like belongs_to prototype

## comments table
### column
- text text
- user_id references
- prototype_id references

### association
- comment belongs_to prototype
- comment belongs_to user
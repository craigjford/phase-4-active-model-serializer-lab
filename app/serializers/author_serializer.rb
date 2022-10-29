class AuthorSerializer < ActiveModel::Serializer
  attributes :name

  has_one :profile
  has_many :posts, serializer: AuthorPostSerializer 
  # has_many :tags
  # has_many :post_tags
  # has_many :tags, through: :post_tags

end

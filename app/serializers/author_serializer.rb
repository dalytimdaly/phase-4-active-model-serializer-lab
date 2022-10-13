class AuthorSerializer < ActiveModel::Serializer
  attributes :name

  has_many :posts, each_serializer: PostSerializer
  has_one :profile, serializer: AuthorProfileSerializer
end

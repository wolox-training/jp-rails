class BookSerializer < ActiveModel::Serializer
  attributes :genre, :author, :image, :title, :publisher, :year
end
class CostumeSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :owner_name, :owner_email, :location, :description, :category_id

  belongs_to :category
end

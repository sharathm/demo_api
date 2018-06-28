class RentalSerializer < ActiveModel::Serializer
  attributes :title,
  :owner,
  :city,
  :category,
  :image,
  :bedrooms,
  :description,
  :canEnlarge
  def attributes(*args)
    hash = super
  end

  def canEnlarge
    [true, false].sample
  end
end

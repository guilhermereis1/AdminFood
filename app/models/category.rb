class Category < ApplicationRecord
  has_many :products

  def as_json(options = {})
    super(
      include: :products
    )
  end
end

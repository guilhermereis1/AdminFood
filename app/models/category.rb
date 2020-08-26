class Category < ApplicationRecord
  has_many :products

  def as_json(options = {})
    super(
      root: true,
      include: :products
    )
  end
end

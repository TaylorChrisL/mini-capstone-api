class Product < ApplicationRecord
  # validates :name, presence: true, uniqueness: true
  # validates :price, presence: true, numericality: true, numericality: { greater_than: 0 }
  # validates :description, length: { in: 10..500 }
  # validates :image_url, format: { with: %r{.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.' } # use gem 'fast image' for actual image verification instead of just .(proper extension)
  has_many :images
  belongs_to :supplier

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    if price < 10
      return true
    end
    return false
  end

  def tax
    return price * 0.09
  end

  def total
    return price + tax
  end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  # def images
  #   Image.where(product_id: id)
  # end

end

class Spina::Html < ApplicationRecord
  has_many :page_parts, as: :page_partable
  has_many :layout_parts, as: :layout_partable
  has_many :structure_parts, as: :structure_partable

  validates :html, presence: true

  def content
    html
  end
end

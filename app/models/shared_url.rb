class SharedUrl < ApplicationRecord
  validates :original_url, presence: true
  validates :key, presence: true, uniqueness: true

  before_validation :generate_key, on: :create, if: :key_no_present?

  def url
    "/#{namespace_presence}#{key}"
  end

  def namespace_presence
    unless namespace.blank?
      "#{namespace}/"
    end
  end

  private

  def generate_key
    self.key = SecureRandom.hex(4)
  end

  def key_no_present?
    key.blank?
  end
end

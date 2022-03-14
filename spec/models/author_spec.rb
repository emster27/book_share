require "rails_helper"

RSpec.describe Author, type: :model do
  describe "Direct Associations" do
    it { should have_many(:books) }
  end

  describe "InDirect Associations" do
    it { should have_many(:reviews) }
  end

  describe "Validations" do
    it {
      should validate_numericality_of(:book_count).is_greater_than_or_equal_to(1)
    }

    it { should validate_presence_of(:name) }
  end
end

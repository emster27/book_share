require "rails_helper"

RSpec.describe Review, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:user) }

    it { should belong_to(:book) }
  end

  describe "InDirect Associations" do
    it { should have_one(:author) }
  end

  describe "Validations" do
    it { should validate_presence_of(:book_id) }

    it {
      should validate_inclusion_of(:rating).in_array(["0", ".5", "1", "1.5", "2",
                                                      "2.5", "3", "3.5", "4", "4.5", "5"])
    }

    it { should validate_presence_of(:user_id) }
  end
end

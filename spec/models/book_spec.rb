require 'rails_helper'

RSpec.describe Book, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:reviews) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_presence_of(:description) }

    it { should validate_presence_of(:publish_year) }

    it { should validate_presence_of(:title) }

    end
end

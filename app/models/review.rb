class Review < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :rating, :presence => true

  validates :rating, :inclusion => { :in => [ "0", ".5", "1", "1.5", "2", "2.5", "3", "3.5", "4", "4.5", "5" ]  }

  validates :user_id, :presence => true

  # Scopes

  def to_s
    user.to_s
  end

end

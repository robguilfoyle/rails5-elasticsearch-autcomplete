class ReviewAuthor < ActiveRecord::Base
  # es indexes
  # specifying index, type and back-reference
  # for updating after user save or destroy
  update_index('store#review_author') { self }

  # associations
  has_many :reviews

  alias_attribute :title, :name
  alias_attribute :description, :bio

end

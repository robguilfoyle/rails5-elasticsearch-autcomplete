class Review < ActiveRecord::Base

  # es indexes
  update_index('store#review') { self } # specifying index, type and back-reference
  # for updating after user save or destroy
  update_index('store#review_author') { self }
  update_index('store#product') { self }

  #associations
  belongs_to :review_author
  belongs_to :product

  alias_attribute :description, :body

end

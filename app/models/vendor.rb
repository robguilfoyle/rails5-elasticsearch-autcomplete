class Vendor < ActiveRecord::Base

  # es indexes
  update_index('store#vendor') { self } # specifying index, type and back-reference
  # for updating after user save or destroy
  # associations
  has_many :products

  alias_attribute :title, :name

end

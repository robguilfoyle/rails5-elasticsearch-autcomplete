class StoreIndex < Chewy::Index
  define_type Product.includes(:vendor) do
    field :name, :description # multiple fields without additional options
    field :vendor do
      field :name
      field :description # default data type is `string`
    end
  end

  define_type Vendor.includes(:products) do
    field :name, :description
    field :products do
      field :name, :description
    end
  end

  define_type Review.includes(:review_author) do
    field :body
    field :review_author do
      field :name, :bio
    end
  end

  define_type ReviewAuthor.includes(:reviews) do
    field :name, :bio
    field :reviews do
      field :body
    end
  end
end

class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :body
      t.references :review_author, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.timestamps
    end
  end
end

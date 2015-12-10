class CreateReviewAuthors < ActiveRecord::Migration
  def change
    create_table :review_authors do |t|
      t.string :name
      t.string :bio

      t.timestamps
    end
  end
end

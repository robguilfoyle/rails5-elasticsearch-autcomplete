# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ActiveRecord::Base.connection.reset_pk_sequence!('vendors')

Vendor.create(id: 1, name: 'Oakmont Oaks', description: 'Oakmont provides choice oak from Orlando, Louisville, and Seattle')
Vendor.create(id: 2, name: 'Windy Reserve', description: 'Windy Reserve has provides an array of timber from all accross the south east.')
Vendor.create(id: 3, name: 'Big Hill', description: 'Big Hill provides oak, northern ash, and pine from various regions of Canada.')

ActiveRecord::Base.connection.reset_pk_sequence!('products')

Product.create(id: 1, vendor_id: 1, name: 'Sturdy Oak', description: 'This oak grain is of the highest quality, leaving it extra sturdy.')
Product.create(id: 2, vendor_id: 1, name: 'Flimsy Oak', description: 'This oak plank is super flimsy and make for easy chairs.')
Product.create(id: 3, vendor_id: 1, name: 'Flexible Oak', description: 'This oak plank is flexible, it can be bent four times before snapping.')
Product.create(id: 4, vendor_id: 2, name: 'Northern Ash Planks', description: 'These northern ash planks are good for building or burning.')
Product.create(id: 5, vendor_id: 2, name: 'Aged Mahogany', description: 'This aged Mahogany makes for an excellant coffeetable wood.')
Product.create(id: 6, vendor_id: 2, name: 'Aged Cherry', description: 'No chair or table is made correctly without Cherry.')
Product.create(id: 7, vendor_id: 3, name: 'Walnut Planks', description: 'These walnut planks make for a perfect deck.')
Product.create(id: 8, vendor_id: 3, name: 'Rosewood Pick', description: 'This special pick of Rosewood is perfect for carving.')
Product.create(id: 9, vendor_id: 3, name: 'Waterproof Teak', description: 'These teak planks allow for waterproof and sun proof outdoor wood.')

ActiveRecord::Base.connection.reset_pk_sequence!('review_authors')

ReviewAuthor.create(id: 1, name: 'George Washington', bio: 'George is the co-founder of the United States')
ReviewAuthor.create(id: 2, name: 'Abe Lincoln', bio: 'Abe never told a lie.')
ReviewAuthor.create(id: 3, name: 'Thomas Jefferson', bio: 'TJ was a furniture maker.')

ActiveRecord::Base.connection.reset_pk_sequence!('reviews')

Review.create(id: 1, product_id: 1, review_author_id: 1, title: 'Super Sturdy!', body: 'The sturdy oak is a solid building material that will last.')
Review.create(id: 2, product_id: 2, review_author_id: 1, title: 'Awesome Flimsy Trees', body: 'The flimsy oak is a super flimsy and light material.')
Review.create(id: 3, product_id: 3, review_author_id: 1, title: 'Crazy Flexer', body: 'The flexible oak, not to be confused with flimsy, is flexible.')
Review.create(id: 4, product_id: 4, review_author_id: 2, title: 'Windy Ash!', body: 'Northern ash planks from Windy Reserve are awesome!')
Review.create(id: 5, product_id: 5, review_author_id: 2, title: 'Old Aged', body: 'The aged mahogany is high grain old stuff.')
Review.create(id: 6, product_id: 6, review_author_id: 2, title: 'Cherry Reserve', body: 'The cherry we bought from Windy Reserve was aweomse!')
Review.create(id: 7, product_id: 7, review_author_id: 3, title: 'Walnuts Everywhere', body: 'Have you ever had walnut this solid? We built our deck out of it.')
Review.create(id: 8, product_id: 8, review_author_id: 3, title: 'Rosewoods Galore', body: 'We found these rosewoods to be really light and tough.')
Review.create(id: 9, product_id: 9, review_author_id: 3, title: 'Outdoor Giant', body: 'If there ever was a better wood for the outdoors I have not seen it.')

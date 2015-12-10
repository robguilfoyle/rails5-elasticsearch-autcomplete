#config/initializers/chewy.rb
Chewy.use_after_commit_callbacks = !Rails.env.test?
Chewy.root_strategy = :bypass

# config/initializers/active_storage.rb

Rails.application.config.active_storage.variant_processor = :mini_magick
Rails.application.config.active_storage.variant_quality = 90
Rails.application.config.active_storage.variant_convert = "jpg"

Rails.application.config.active_storage.service_urls_expire_in = 2.minutes

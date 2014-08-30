secret = Rails.env.production? ? ENV['SECRET_TOKEN'] : '7976d352d582bdb82c5c8383831e6abbcedd43fd7d749cee194679fa57b23c283a619013390656bd0d215eb18470d13f85526408a493f43026bfa8b50194efcf'
Pizarra::Application.config.secret_key_base = secret

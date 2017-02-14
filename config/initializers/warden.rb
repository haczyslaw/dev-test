require Rails.root.join('app/lib/strategies/authentication_token_strategy')

Warden::Strategies.add(:authentication_token, AuthenticationTokenStrategy)

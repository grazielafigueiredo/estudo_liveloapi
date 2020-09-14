# frozen_string_literal: true

class ApiGet
  include HTTParty
  base_uri CONFIG['base_uri']

  def self.api_get_user(id)
    print id
    get("/todos/#{id}")
  end

  def self.api_get_users
    get("/todos/")
  end
end

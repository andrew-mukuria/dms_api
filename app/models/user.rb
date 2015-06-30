class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User

    has_one :api_key, dependent: :destroy

    after_create :create_api_key

    private

    def create_api_key
      ApiKey.create :user => self
    end
end

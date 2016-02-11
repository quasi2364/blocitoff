require 'rails_helper'
#include RandomData

RSpec.describe User, type: :model do
  let(:user) {create(:user)}

	#==== VALIDATIONS =========================

	#EMAIL
	it {should validate_presence_of(:email)}
	it {should validate_uniqueness_of(:email)}
	it {should allow_value("user@user.com").for(:email)}
	it {should_not allow_value("user.com").for(:email)}
	it {should_not allow_value("user@user").for(:email)}

	#PASSWORD
	it {should validate_presence_of(:password)}
	it {should validate_length_of(:password).is_at_least(8)}
end

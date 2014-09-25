FactoryGirl.define do
	sequence(:email) {|n| "user#{n}@example.com" }
	factory :user do
		name "example_user"
		email { generate(:email) }
		password "hunter2"
		password_confirmation "hunter2"

		factory :admin_user do
			admin true
		end

		
	end
end
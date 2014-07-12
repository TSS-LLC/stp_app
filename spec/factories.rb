#factories.rb

FactoryGirl.define do
	factory :user do
		name		"Kay Fry"
		email		"kfry@sky.high"
		password	"foobar"
		password_confirmation "foobar"
	end
end
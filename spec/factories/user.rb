FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user_#{n}@sgsukien.com"}
    password "secret123456"
    password_confirmation "secret123456"
  end
end

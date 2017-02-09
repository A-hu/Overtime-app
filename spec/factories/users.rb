FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    email { generate :email }
    password "123123"
    first_name "hihi"
    last_name "hello"
  end

  factory :admin_user, class: "AdminUser" do
    email { generate :email }
    password "123123"
    first_name "admin"
    last_name "hello"
  end

  factory :non_authorized_user, class: "User" do
    email { generate :email }
    password "123123"
    first_name "Non"
    last_name "Authorized"
  end
end

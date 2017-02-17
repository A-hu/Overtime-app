FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    email { generate :email }
    password "123123"
    first_name "hihi"
    last_name "hello"
    phone "5555555555"
    ssn 1234
    company "SHT company"
  end

  factory :admin_user, class: "AdminUser" do
    email { generate :email }
    password "123123"
    first_name "admin"
    last_name "hello"
    phone "5555555555"
    ssn 1234
    company "SHT company"
  end

  factory :non_authorized_user, class: "User" do
    email { generate :email }
    password "123123"
    first_name "Non"
    last_name "Authorized"
    phone "5555555555"
    ssn 1234
    company "SHT company"
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.destroy_all
Member.destroy_all
Bank.destroy_all

members = []
10.times do
  members << Member.create(name: Faker::Name.unique.name, email: Faker::Internet.unique.email)
end

bank1 = Bank.create(name: Faker::Bank.unique.name)
bank2 = Bank.create(name: Faker::Bank.unique.name)
bank3 = Bank.create(name: Faker::Bank.unique.name)

members.each do |member|
  member.accounts.create(number: Faker::Bank.account_number, member: member, bank: bank1)
  member.accounts.create(number: Faker::Bank.account_number, member: member, bank: bank1)
  member.accounts.create(number: Faker::Bank.account_number, member: member, bank: bank2)
  member.accounts.create(number: Faker::Bank.account_number, member: member, bank: bank2)
  member.accounts.create(number: Faker::Bank.account_number, member: member, bank: bank3)
  member.accounts.create(number: Faker::Bank.account_number, member: member, bank: bank3)
end

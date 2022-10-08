first_user = User.create(name: 'Antonio', email: 'antonio@mail.com')
first_user.password = 'pass1234'
first_user.password_confirmation = 'pass1234'
first_user.save

second_user = User.create(name: 'Gloria', email: 'gloria@mail.com')
second_user.password = 'pass1234'
second_user.password_confirmation = 'pass1234'
second_user.save

third_user = User.create(name: 'William', email: 'william@mail.com')
third_user.password = 'pass1234'
third_user.password_confirmation = 'pass1234'
third_user.save

category1 = Category.create(name: 'Bank', icon: 'icon', user_id: first_user.id)
category2 = Category.create(name: 'Credit Card', icon: 'icon', user_id: first_user.id)
category3 = Category.create(name: 'Debit Card', icon: 'icon', user_id: second_user.id)
category4 = Category.create(name: 'Cash', icon: 'icon', user_id: second_user.id)
category5 = Category.create(name: 'Loan', icon: 'icon', user_id: third_user.id)
category6 = Category.create(name: 'Account', icon: 'icon', user_id: third_user.id)

movement1 = Movement.create(name: 'Taxes', amount: 150.00, user_id: first_user.id)
movement2 = Movement.create(name: 'Groceries', amount: 12.06, user_id: first_user.id)
movement3 = Movement.create(name: 'Gift Card', amount: 50.00, user_id: first_user.id)
movement4 = Movement.create(name: 'Dinner', amount: 100.00, user_id: first_user.id)
movement5 = Movement.create(name: 'Oil', amount: 40.43, user_id: second_user.id)
movement6 = Movement.create(name: 'Parking', amount: 20.00, user_id: second_user.id)
movement7 = Movement.create(name: 'Fruits', amount: 12.50, user_id: second_user.id)
movement8 = Movement.create(name: 'Coffee', amount: 4.50, user_id: second_user.id)
movement9 = Movement.create(name: 'First Month', amount: 300.00, user_id: third_user.id)
movement10 = Movement.create(name: 'Second Month', amount: 400.00, user_id: third_user.id)
movement11 = Movement.create(name: 'Car Bill', amount: 250.00, user_id: third_user.id)
movement12 = Movement.create(name: 'House Bill', amount: 500.00, user_id: third_user.id)

Clasification.create(movement_id: movement1.id, category_id: category1.id)
Clasification.create(movement_id: movement2.id, category_id: category1.id)
Clasification.create(movement_id: movement3.id, category_id: category2.id)
Clasification.create(movement_id: movement4.id, category_id: category2.id)
Clasification.create(movement_id: movement5.id, category_id: category3.id)
Clasification.create(movement_id: movement6.id, category_id: category3.id)
Clasification.create(movement_id: movement7.id, category_id: category4.id)
Clasification.create(movement_id: movement8.id, category_id: category4.id)
Clasification.create(movement_id: movement9.id, category_id: category5.id)
Clasification.create(movement_id: movement10.id, category_id: category5.id)
Clasification.create(movement_id: movement11.id, category_id: category6.id)
Clasification.create(movement_id: movement12.id, category_id: category6.id)

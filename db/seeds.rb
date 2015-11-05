# clean out all current data
User.delete_all
Comment.delete_all

ferdie = User.create(
  name: "Ferdie Q",
  username: "ferdiesbites",
  email: "ferdie@email.com",
  gender: "M",
  city: "Los Angeles",
  country: "USA",
  moderator: true,
  password:              "password",
  password_confirmation: "password"
)

garfield = User.create(
  name: "Garfield",
  username: "ILOVELASAGNA",
  email: "garfield@email.com",
  gender: "M",
  city: "Suburbia",
  country: "USA",
  password:              "12345",
  password_confirmation: "12345"
)

homer = User.create(
  name: "Homer Simpson",
  username: "MAX POWER",
  email: "homer.j.simpson@email.com",
  gender: "M",
  city: "Springfield",
  country: "USA",
  password:              "12345",
  password_confirmation: "12345"
)

patrick = User.create(
  name: "Patrick Star",
  username: "Barnicle Boy",
  email: "patrick@email.com",
  gender: "M",
  city: "Bikini Bottom",
  country: "USA",
  moderator: false,
  password:              "12345",
  password_confirmation: "12345"
)

domo = User.create(
  name: "Domo",
  username: "Nom-Nom ",
  email: "domo@email.com",
  gender: "M",
  city: "Tokyo",
  country: "Japan",
  moderator: false,
  password:              "12345",
  password_confirmation: "12345"
)


comment1 = Comment.create(content: "That looks AMAZING!")

comment2 = Comment.create(content: "Nom nom nom!")

comment3 = Comment.create(content: "I WANT NOW!!")

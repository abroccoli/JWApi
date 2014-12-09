User.delete_all
Post.delete_all
Category.delete_all

ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  next if table == 'schema_migrations'
  ActiveRecord::Base.connection.execute("TRUNCATE #{table}")
end

users = User.create([
  {
    first_name:"Jason",
    last_name:"Wharff",
    username:"jasonwharff",
    role:"admin",
    email:"fishermanswharff@mac.com",
    password_digest:"$2a$10$qA2kdO7MOlWkAUIUQWhNtuzlIZScAs69QrTHxn13BM9i6jUUuLbfS",
    token:"9cbaf8c82925426c869ecfc4b610c8a6",
  },
  {
    first_name: 'Jason',
    last_name: 'Wharff',
    username: 'dubya',
    role: 'admin',
    email: 'jasonwharff@gmail.com',
    password_digest: '$2a$10$iUY.xKqExZ7DhaWVAAh5Q.o/gfUDR5I7iHTp2Y46nmrogYIV504X6',
    token: '7a2ab5a8677b446eb1c269c5056a001d'
  }
])

categories = Category.create([
  {name: "Design"},
  {name: "Development"},
  {name: "Illustration"},
  {name: "Photography"},
  {name: "Ruby"},
  {name: "Javascript"},
  {name: "AngularJS"},
  {name: "CSS"},
  {name: "HTML"},
  {name: "TIL"},
  {name: "jQuery"},
  {name: "SQL"},
  {name: "Computer Science"}
])

posts = Post.create([
  { title: "TIL: binary trees with nothing", body: "Euismod Aenean Ornare Malesuada Inceptos", user_id: users[0].id },
  { title: "TIL: Quick sorting", body: "Donec sed odio dui. Maecenas faucibus mollis interdum. Curabitur blandit tempus porttitor. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.", user_id: users[0].id },
  { title: "TIL: Ruby", body: "Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Maecenas faucibus mollis interdum. Donec ullamcorper nulla non metus auctor fringilla.", user_id: users[0].id },
  { title: "TIL: Rails API has_and_belongs_to_many", body: "Vestibulum id ligula porta felis euismod semper. Cras mattis consectetur purus sit amet fermentum. Maecenas sed diam eget risus varius blandit sit amet non magna. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Curabitur blandit tempus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.", user_id: users[0].id },
  { title: "TIL: AngularJS $promises", body: "Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Sed posuere consectetur est at lobortis. Etiam porta sem malesuada magna mollis euismod.", user_id: users[0].id },
  { title: "TIL: Backbone Routers", body: "Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Donec id elit non mi porta gravida at eget metus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.", user_id: users[0].id },
  { title: "TIL: SQL Trigger Functions", body: "Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Sed posuere consectetur est at lobortis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mattis consectetur purus sit amet fermentum.", user_id: users[0].id },
  { title: "TIL: Setting up AngularJS with Yeoman", body: "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Curabitur blandit tempus porttitor. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam id dolor id nibh ultricies vehicula ut id elit. Nulla vitae elit libero, a pharetra augue. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.", user_id: users[0].id }
])

posts[0].categories << Category.find_by(name:"Development")
posts[0].categories << Category.find_by(name:"Ruby")
posts[1].categories << Category.find_by(name:"Development")
posts[1].categories << Category.find_by(name:"Ruby")
posts[1].categories << Category.find_by(name:"Computer Science")
posts[1].categories << Category.find_by(name:"TIL")
posts[2].categories << Category.find_by(name:"Development")
posts[3].categories << Category.find_by(name:"Development")
posts[4].categories << Category.find_by(name:"Development")
posts[5].categories << Category.find_by(name:"Development")
posts[6].categories << Category.find_by(name:"Development")
posts[7].categories << Category.find_by(name:"Development")




























user = User.create!(email: 'trey@simoniskuphal.io', password: '123456')

user.groups.create!(
  name: 'Trabalho',
  origin: 'Asa Norte Superquadra Norte 212 SQN 212 BL J - Asa Norte, Brasilia - Federal District',
  destination: 'Indie Warehouse Coworking - Shin Ca 2, Lote 16 - Lago Norte, Brasília - DF',
  arrival_time: Time.now,
  departure_time: Time.now
)

user.groups.create!(
  name: 'Churrasco',
  origin: 'Asa Norte Superquadra Norte 212 SQN 212 BL J - Asa Norte, Brasilia - Federal District',
  destination: 'Centro Universitário Euro Americano - Unieuro Asa Norte, St. de Grandes Áreas Norte 916 - Brasília, DF, 70790-160',
  arrival_time: Time.now,
  departure_time: Time.now
)

user.groups.create!(
  name: 'Futebol',
  origin: 'Asa Norte Superquadra Norte 212 SQN 212 BL J - Asa Norte, Brasilia - Federal District',
  destination: 'Centro Universitário Euro Americano - Unieuro Asa Norte, St. de Grandes Áreas Norte 916 - Brasília, DF, 70790-160',
  arrival_time: Time.now,
  departure_time: Time.now
)

user.groups.create!(
  name: 'Médico',
  origin: 'Asa Norte Superquadra Norte 212 SQN 212 BL J - Asa Norte, Brasilia - Federal District',
  destination: 'Centro Universitário Euro Americano - Unieuro Asa Norte, St. de Grandes Áreas Norte 916 - Brasília, DF, 70790-160',
  arrival_time: Time.now,
  departure_time: Time.now
)

user.groups.create!(
  name: 'Igreja',
  origin: 'Asa Norte Superquadra Norte 212 SQN 212 BL J - Asa Norte, Brasilia - Federal District',
  destination: 'Centro Universitário Euro Americano - Unieuro Asa Norte, St. de Grandes Áreas Norte 916 - Brasília, DF, 70790-160',
  arrival_time: Time.now,
  departure_time: Time.now
)


user2 = User.create(email: 'maximilian_bartoletti@wisoky.com', password: '123456')
user3 = User.create(email: 'atlynn_dach@gutkowski.net', password: '123456')
user4 = User.create(email: 'arianna_will@hills.info', password: '123456')

Group.last.users << user2
Group.last.users << user3
Group.last.users << user4

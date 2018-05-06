user = User.create!(email: 'test@test.com', password: '123456')

user.groups.create!(
  name: 'Trabalho',
  origin: 'Asa Norte Superquadra Norte 212 SQN 212 BL J - Asa Norte, Brasilia - Federal District',
  destination: 'Indie Warehouse Coworking - Shin Ca 2, Lote 16 - Lago Norte, Brasília - DF',
  arrival_time: Time.now,
  departure_time: Time.now
)


user.groups.create!(
  name: 'Faculdade',
  origin: 'Asa Norte Superquadra Norte 212 SQN 212 BL J - Asa Norte, Brasilia - Federal District',
  destination: 'Centro Universitário Euro Americano - Unieuro Asa Norte, St. de Grandes Áreas Norte 916 - Brasília, DF, 70790-160',
  arrival_time: Time.now,
  departure_time: Time.now
)


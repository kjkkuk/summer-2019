# rubocop:disable all
places = [
  [ name: 'Wood & Fire',
    short_description: 'Wood&Fire – место для отдыха, в котором есть все.',
    description: 'Wood&Fire – место для отдыха, в котором есть все, для того чтобы расслабиться
    после рабочего дня, провести вечер с друзьями или семьей и отметить любой праздник.',
    address: 'г. Минск, ул. Ф. Скорины, 1',
    image_url: 'https://ms1.relax.by/images/91653eb43587a0a863ebd226e8ca9edc/resize/point=middle-center,h=240,q=80/place_gallery_photo/de/a8/64/dea8645f03b94d3e5089effc5d3ec170.jpg'],
  [ name: 'Grand Сafe',
    short_description: 'Один из самых старых и дорогих ресторанов города,
    который расположен в центре Минска.',
    description: 'Один из самых старых и дорогих ресторанов города,
    который расположен в центре Минска. Тут вы сможете не только отдохнуть в стильном интерьере,
    но и привести девушку на романтический ужин.',
    address: 'г. Минск, ул. Ленина, 2',
    image_url: 'https://media-cdn.tripadvisor.com/media/photo-s/08/9b/07/fe/grand-cafe.jpg'],
  [ name: 'Brooklyn',
    short_description: 'Гастропаб «Бруклин» — место, где царит уникальная атмосфера непринужденности,
    наслаждения и веселья.',
    description: 'Гастропаб «Бруклин» — место, где царит уникальная атмосфера непринужденности,
    наслаждения и веселья. Дружелюбный персонал, авторская кухня, уникальные коктейли,
    жаркие танцы и вечеринки — не нужно ждать выходных, чтобы хорошо отдохнуть,
    в заведении рады гостям каждый день!
    Здесь одинаково приятно провести время, будь это бизнес-ланч под акустическую музыку,
    просмотр трансляции спортивного матча, уединенное романтическое свидание или яркая вечеринка.
    В компании приветливого персонала, впечатляющих ритмов и сочных сытных блюд
    заведение позволит отвлечься от повседневной суеты и погрузиться в мир нескончаемого веселья,
    релакса и новых знакомств.',
    address: 'г. Минск, пр-кт Победителей, 9',
    image_url: 'https://ms1.relax.by/images/07d5b2c4e6f0d23bf9ff9c6413fa94c1/resize/w%3D1200%2Ch%3D800%2Cq%3D80/place_gallery_photo/cd/82/82/cd8282a835cd37379d48ce1f285199ab.jpg'],
  [ name: 'Ember',
    short_description: 'Ember VII Heaven на 7 этаже гостиницы DoubleTree by Hilton - это летняя терраса
    с панорамой на исторический центр Минска.',
    description: 'Ember VII Heaven на 7 этаже гостиницы DoubleTree by Hilton - это летняя терраса
    с панорамой на исторический центр Минска, изысканным летним меню и впечатляющей винотекой.
    Днем терраса Ember VII Heaven подходит для деловых переговоров,
    неспешных обедов на свежем воздухе и отдыха в лаунж-зоне.
    Вечером ресторан превращается в превосходное место для аперитива и ужина с живописным видом.',
    address: 'г. Минск, пр-кт Победителей, 9',
    image_url: 'https://lh3.googleusercontent.com/y1_MkjzIIflCGJZQIPh33kf1CrSDe_ZRk77BzgeS8kjHyZiPNHfGv07tYZOUT6L5lVlaIwBbPg=w1080-h608-p-no-v0']
]

places.each do |p|
  Place.create(p)
end
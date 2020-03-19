# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([
	{
		name: 'Joseph'
	},
	{
		name: 'Osgood'
	},
	{
		name: 'Jake'
	},
	{
		name: 'Samantha'
	},
	{
		name: 'Andrew'
	}
])
Plant.create([
	{
		name: 'Monstera Deliciosa',
		plant_pic_url: 'https://static.turbosquid.com/Preview/001211/193/QF/3D-monster-deliciosa-model_Z.jpg'
	},
	{
		name: 'Red Rubin Basil',
		plant_pic_url: 'https://images.squarespace-cdn.com/content/v1/5968af67414fb590cb8f77e3/1548707898802-JF4LKN9IOJKU7VWYR2OQ/ke17ZwdGBToddI8pDm48kNZ1Hmi--5wJzxRjVS3Ku0pZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpybVZGEQdftFwX4SoPYtgWbk9WjizIURtrQdSi5hG3Dn1POeL701yjAeqrQiO25QLY/il_570xN.1418946704_j50m.jpg'
	},
	{
		name: 'Maranta Red',
		plant_pic_url: 'https://images-na.ssl-images-amazon.com/images/I/81qrgsKd1ML._AC_SL1500_.jpg'
	},
	{
		name: 'Silver Pothos',
		plant_pic_url: 'https://i.pinimg.com/originals/b6/4f/86/b64f8622ba2f70578cfce69c279109be.jpg'
	},
	{
		name: 'Philodendron Hederaceum',
		plant_pic_url: 'https://cdn.shopify.com/s/files/1/0212/1030/0480/products/51dAPGUuoxL_350x400_crop_center.jpg?v=1583894295'
	},
	{
		name: 'Tradescantia Zebrina',
		plant_pic_url: 'https://images-na.ssl-images-amazon.com/images/I/51BY3jRhW-L._AC_SX425_.jpg'
	},
])
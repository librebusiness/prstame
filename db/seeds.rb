# Create identification document types
cedula = {
	name: 'Cedula',
	description: 'Documento nacional de identificacion'
}

passport = {
	name: 'Pasaporte',
	description: 'Pasaporte'
}

driver_license = {
	name: 'Licencia',
	description: 'Licencia de Conducir'
}

social_service_card = {
	name: 'Tarjeta del seguro',
	description: 'Tarjeta de seguro social o de salud'
}

# IdentificationDocumentType.create([
# 	cedula,
# 	passport,
# 	driver_license,
# 	social_service_card,
# ])

Customer.create({
	name: 'Customer 1',
	email: 'customer@otonielreyes.com',
	password: '123456',
	password_confirmation: '123456',
})

manager = Manager.new({
	name: 'Manager 1',
	email: 'lender@otonielreyes.com',
	password: '123456',
	password_confirmation: '123456',
})
manager.save

Staff.create({
	name: 'Staff 1',
	email: 'staff@otonielreyes.com',
	password: '123456',
	password_confirmation: '123456',
	manager_id: manager.id
})

Admin.create({
	name: 'Otoniel Reyes',
	email: 'otoniel@otonielreyes.com',
	password: '123456',
	password_confirmation: '123456',
})

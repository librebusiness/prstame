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

IdentificationDocumentType.create([
	cedula,
	passport,
	driver_license,
	social_service_card,
])

manager = Manager.new({
	email: 'lender@otonielreyes.com',
	password: '123456',
	password_confirmation: '123456',
})
manager.save

Staff.create({
	email: 'staff@otonielreyes.com',
	password: '123456',
	password_confirmation: '123456',
	manager_id: maanger.id
})

Admin.create({
	email: 'otoniel@otonielreyes.com',
	password: '123456',
	password_confirmation: '123456',
})

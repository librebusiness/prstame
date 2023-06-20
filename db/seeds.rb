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

# Create some users
super_admin = User.new({
	email: 'otoniel@otonielreyes.com',
	password: '123456',
	password_confirmation: '123456',
	role: 'super-admin'
})
super_admin.save()

lender = User.new({
	email: 'lender@otonielreyes.com',
	password: '123456',
	password_confirmation: '123456',
	role: 'lender'
})
lender.save()

staff = User.new({
	email: 'staff@otonielreyes.com',
	password: '123456',
	password_confirmation: '123456',
	role: 'staff',
	admin_id: lender.id
})
staff.save()

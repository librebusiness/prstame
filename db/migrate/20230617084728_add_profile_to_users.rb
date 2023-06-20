class AddProfileToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :gender, :string
    add_column :users, :nationality, :string
    add_column :users, :address_type, :string
    add_column :users, :country, :string
    add_column :users, :state, :string
    add_column :users, :city, :string
    add_column :users, :address, :string
    add_column :users, :zip_code, :string
    add_column :users, :mobile_phone, :string
    add_column :users, :home_phone, :string
    add_column :users, :work_phone, :string
    add_column :users, :public_email, :string
    add_column :users, :risk_tolerance, :integer
    add_column :users, :investment_accreditation, :boolean
    add_column :users, :investment_qualification, :boolean
    add_reference :users, :identification_document_type, foreign_key: true
    add_column :users, :identification_number, :string
    add_column :users, :identificatin_expiry_date, :date
    add_column :users, :identification_issued_country, :string
    add_column :users, :identification_status, :string
    add_column :users, :communication_preferences, :string
    add_column :users, :agree_terms, :boolean
    add_column :users, :agree_bair_agreement, :boolean
    add_column :users, :agree_privacy_policy, :boolean
  end
end

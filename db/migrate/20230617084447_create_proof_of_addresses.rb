class CreateProofOfAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :proof_of_addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :document
      t.string :status

      t.timestamps
    end
  end
end

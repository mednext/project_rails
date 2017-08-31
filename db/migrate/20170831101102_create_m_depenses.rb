class CreateMDepenses < ActiveRecord::Migration[5.1]
  def change
    create_table :m_depenses do |t|
      t.string :title
      t.decimal :montant
      t.string :payer
      t.string :benef

      t.timestamps
    end
  end
end

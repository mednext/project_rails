class MDepense < ApplicationRecord

  has_and_belongs_to_many :users
  belongs_to :payer, class_name: "User", foreign_key: "payeur_id"


end

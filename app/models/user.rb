class User < ApplicationRecord
  include Clearance::User

  has_and_belongs_to_many :m_depenses
 has_many :paid_expenses, class_name: "MDepense", foreign_key: "payeur_id"


end

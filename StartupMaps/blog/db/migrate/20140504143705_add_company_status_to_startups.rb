class AddCompanyStatusToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :company_status, :boolean
  end
end

class AddIndustryToEvent < ActiveRecord::Migration
  def change
    add_reference :events, :industry, index: true
    add_foreign_key :events, :industries
  end
end

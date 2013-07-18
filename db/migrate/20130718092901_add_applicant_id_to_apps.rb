class AddApplicantIdToApps < ActiveRecord::Migration
  def change
    add_column :apps, :applicant_id, :integer
  end
end

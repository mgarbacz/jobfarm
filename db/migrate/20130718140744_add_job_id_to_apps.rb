class AddJobIdToApps < ActiveRecord::Migration
  def change
    add_column :apps, :job_id, :integer
  end
end

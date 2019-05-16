desc 'Set admin to false for existing members' do
  task :set_admin_to_false do
    Member.update_all(admin:false)
  end
end


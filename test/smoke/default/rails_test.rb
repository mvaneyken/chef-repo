unless os.windows?
  deploy_user = 'deploy'
  deploy_group = 'deploy'

  describe user(deploy_user) do
    it { should exist }
  end
  describe group(deploy_group) do
    it { should exist }
  end
  describe package('libffi-dev') do
    it { should be_installed }
  end
end

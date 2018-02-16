if os.debian?
  describe os[:family] do
    it { should eq 'debian' }
  end
  describe user('root') do
    it { should exist }
  end

  describe command('sudo') do
    it { should exist }
  end

  describe package('git') do
    it { should be_installed }
  end

  describe command('git') do
    it { should exist }
  end

  describe command('/usr/local/rbenv/bin/rbenv') do
   it { should exist }
  end

  describe command('/usr/local/rbenv/shims/ruby -v') do
    its('stdout') { should match /2.1.0p0/ }
  end

  describe package('mysql-server-5.7') do
    it { should be_installed }
  end

  describe port('3306') do
    it { should be_listening }
  end

  describe package('nginx') do
    it { should be_installed }
  end

  describe file('/etc/nginx/sites-enabled/000-default') do
    it { should_not exist }
  end

  describe package('postfix') do
    it { should be_installed }
  end

  describe port('25') do
    it { should be_listening }
  end
# Tests RubyGems
  prefix_path = '/usr/local/rbenv/shims/gem'

  describe gem('bundler', prefix_path) do
    it { should be_installed }
  end
end

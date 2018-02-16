unless os.windows?
  dependencies = %w(nodejs)
  dependencies.each do |d|
    describe package(d) do
      it { should be_installed }
    end
  end
end

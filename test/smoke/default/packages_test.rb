unless os.windows?
  %w(libxslt1-dev libxml2-dev).each do |package|
    describe package(package) do
      it { should be_installed }
    end
  end
end

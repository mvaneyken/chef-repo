unless os.windows?
  %w(autoconf binutils-doc bison build-essential flex gettext libncurses5-dev).each do |pkg|
    describe package(pkg) do
      it { should be_installed }
    end
  end
end

class Cli < Formula
    desc "Create, run, test scripts from anyware"
    homepage "https://lot.sh"
    head "https://github.com/lot-sh/cli.git"
    bottle :unneeded
  
    def install
        prefix.install "install.sh"
    end

    def caveats
        <<~EOS
            Please note this installation will manage the updates itself.
            
            Type `lot help` for further information.
        EOS
    end
  
    test do
      system "#{bin}/lot --version"
    end
  end
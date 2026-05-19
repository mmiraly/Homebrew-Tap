class Cawa < Formula
  desc "Context-Aware Workspace Automation"
  homepage "https://github.com/mmiraly/cawa"
  version "v1.3.1"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mmiraly/cawa/releases/download/v1.3.1/cs-v1.3.1-darwin-amd64.tar.gz"
      sha256 "d72670d975f3cdf8904cdd81f9eb22fafeeda120686c6de8f51e16c384c9c159"
    else
      url "https://github.com/mmiraly/cawa/releases/download/v1.3.1/cs-v1.3.1-darwin-arm64.tar.gz"
      sha256 "23decb59a74c0416415af1323863bbf58aa695b66e1937196b47c64260b9b546"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mmiraly/cawa/releases/download/v1.3.1/cs-v1.3.1-linux-amd64.tar.gz"
      sha256 "9ef7ed9dc38e61cd1aa8f3d2b29c82304d5ae8560df4c0e99897fff85090103c"
    else
      url "https://github.com/mmiraly/cawa/releases/download/v1.3.1/cs-v1.3.1-linux-arm64.tar.gz"
      sha256 "06f6a55112d68138af07adbfde2e2a0c6124416b161b9e7379ea652055af2fe7"
    end
  end

  def install
    bin.install "cs"
    zsh_completion.install "_cs"
  end

  test do
    system "#{bin}/cs", "--help"
  end
end

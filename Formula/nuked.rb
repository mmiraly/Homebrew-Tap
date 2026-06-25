class Nuked < Formula
  desc "Nuke stale project dependency folders."
  homepage "https://github.com/mmiraly/nukeD"
  version "v0.1.0"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mmiraly/nukeD/releases/download/v0.1.0/nuked-v0.1.0-darwin-amd64.tar.gz"
      sha256 "1da328a8aaf5d12d3e47d3351910bedfd87b493ff77c960f7db5ad6642da1471"
    else
      url "https://github.com/mmiraly/nukeD/releases/download/v0.1.0/nuked-v0.1.0-darwin-arm64.tar.gz"
      sha256 "67cbd458b8ce614a4d52bdea8919daab13e146d5af7a2d7f400f06a82f7d34cd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mmiraly/nukeD/releases/download/v0.1.0/nuked-v0.1.0-linux-amd64.tar.gz"
      sha256 "9fc6faea223f8e9225e30d3d66d17ac9e17721d4bc8f3568096065735256bcb3"
    else
      url "https://github.com/mmiraly/nukeD/releases/download/v0.1.0/nuked-v0.1.0-linux-arm64.tar.gz"
      sha256 "c9c1af79de3c7fa33c94a5cec88ab9bd595801cca9b712db60bd8779de977d10"
    end
  end

  def install
    bin.install "nuked"
    zsh_completion.install "_nuked"
  end

  test do
    system "#{bin}/nuked", "--help"
  end
end

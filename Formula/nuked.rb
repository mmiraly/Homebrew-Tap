class Nuked < Formula
  desc "Nuke stale project dependency folders."
  homepage "https://github.com/mmiraly/nukeD"
  version "v1.3.1"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mmiraly/nukeD/releases/download/v1.3.1/nuked-v1.3.1-darwin-amd64.tar.gz"
      sha256 "cf2d93e616322a0eb0f65bca729f816d31e0df530b2a08d723214cb80d76e206"
    else
      url "https://github.com/mmiraly/nukeD/releases/download/v1.3.1/nuked-v1.3.1-darwin-arm64.tar.gz"
      sha256 "a557f12c01033d3b34a26f54940b9bc0a6df6f618bc6b910d00d5ab2317f6d69"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mmiraly/nukeD/releases/download/v1.3.1/nuked-v1.3.1-linux-amd64.tar.gz"
      sha256 "2cc5bed8425a4928ea22bbb1c73d339c280dbf616890966f743d97d1363a4e48"
    else
      url "https://github.com/mmiraly/nukeD/releases/download/v1.3.1/nuked-v1.3.1-linux-arm64.tar.gz"
      sha256 "9807198f366035eaadf2371b3fe15da53c257eea16b7f000afa466ea8f7d71b6"
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

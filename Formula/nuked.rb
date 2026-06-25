class Nuked < Formula
  desc "Nuke stale project dependency folders."
  homepage "https://github.com/mmiraly/nukeD"
  version "v1.0.0"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mmiraly/nukeD/releases/download/v1.0.0/nuked-v1.0.0-darwin-amd64.tar.gz"
      sha256 "eef1b02f71d60aac562bbb7e3ac54034007106755bffbace39ec8a003f8379ff"
    else
      url "https://github.com/mmiraly/nukeD/releases/download/v1.0.0/nuked-v1.0.0-darwin-arm64.tar.gz"
      sha256 "012ff167871ab0a6762ed4cbae0447f1f91c071c68888a6230ea9eef88105ecf"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mmiraly/nukeD/releases/download/v1.0.0/nuked-v1.0.0-linux-amd64.tar.gz"
      sha256 "46b62c1ef3af506d9d480a24ff96c5e84c346defef7df8978ccce5689037816f"
    else
      url "https://github.com/mmiraly/nukeD/releases/download/v1.0.0/nuked-v1.0.0-linux-arm64.tar.gz"
      sha256 "6ee069e532e6d717bbf03f4415ac34cb7de906956770160f3cc18935242bc0f7"
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

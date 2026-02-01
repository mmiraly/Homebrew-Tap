class Cawa < Formula
  desc "Context-Aware Workspace Automation"
  homepage "https://github.com/mmiraly/cawa"
  version "v1.1.0"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mmiraly/cawa/releases/download/v1.1.0/cs-v1.1.0-darwin-amd64.tar.gz"
      sha256 "ee903ea1d7d4cfaf84f57083a6d058c71fa5289d522945682133828ed641541d"
    else
      url "https://github.com/mmiraly/cawa/releases/download/v1.1.0/cs-v1.1.0-darwin-arm64.tar.gz"
      sha256 "f2d60b535a92748fd9eec2a0ddc51d6102f7a8d3d9b75cfca64366c40edd6c2f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mmiraly/cawa/releases/download/v1.1.0/cs-v1.1.0-linux-amd64.tar.gz"
      sha256 "440d48041e8b8d437c48c4508d3f27080912a2a710756f4d3291cfbacd14a20d"
    else
      url "https://github.com/mmiraly/cawa/releases/download/v1.1.0/cs-v1.1.0-linux-arm64.tar.gz"
      sha256 "2e663ce1c893a7615301719a6b39e8d2feaaebef15d7d6bbb00817d189e5222a"
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

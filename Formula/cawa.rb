class Cawa < Formula
  desc "Context-Aware Workspace Automation"
  homepage "https://github.com/mmiraly/cawa"
  version "v1.2.1"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mmiraly/cawa/releases/download/v1.2.1/cs-v1.2.1-darwin-amd64.tar.gz"
      sha256 "ce26ba26bc5953a963f2bafe4e01d71cdaadfe0086dc02d2e6cac9f497ff36df"
    else
      url "https://github.com/mmiraly/cawa/releases/download/v1.2.1/cs-v1.2.1-darwin-arm64.tar.gz"
      sha256 "3a20f9fe352131fd184499cb672613cbe9045e209f779254408a075fd4d7fe53"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mmiraly/cawa/releases/download/v1.2.1/cs-v1.2.1-linux-amd64.tar.gz"
      sha256 "2c5353faed0d11832a1ed5ef81e47da9e9b26fdc38e6f32869e3e6e01e00cb68"
    else
      url "https://github.com/mmiraly/cawa/releases/download/v1.2.1/cs-v1.2.1-linux-arm64.tar.gz"
      sha256 "d5df9a710b6368ffff48ab1a66d15a42ebfa4ed7062d29bd61431f28a255a714"
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

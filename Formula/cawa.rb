class Cawa < Formula
  desc "Context-Aware Workspace Automation"
  homepage "https://github.com/mmiraly/cawa"
  version "v1.3.0"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mmiraly/cawa/releases/download/v1.3.0/cs-v1.3.0-darwin-amd64.tar.gz"
      sha256 "62a756b6c732c10c776175bb5533639b7de22d69898b4c275e15a60979a7dadf"
    else
      url "https://github.com/mmiraly/cawa/releases/download/v1.3.0/cs-v1.3.0-darwin-arm64.tar.gz"
      sha256 "a07fadcfe5b32c44b24adff469d8360dffbd2617bedbf7f47c529ccdeaa86d03"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mmiraly/cawa/releases/download/v1.3.0/cs-v1.3.0-linux-amd64.tar.gz"
      sha256 "def02802a56617f5bac21bf68c1ee7148f4af043bf090c341f30a408d46ad42a"
    else
      url "https://github.com/mmiraly/cawa/releases/download/v1.3.0/cs-v1.3.0-linux-arm64.tar.gz"
      sha256 "e9ba011ba8af3be4520b3d7d7ef20e26ec796990a2732e64083f584031bab10e"
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

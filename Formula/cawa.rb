class Cawa < Formula
  desc "Context-Aware Workspace Automation"
  homepage "https://github.com/mmiraly/cawa"
  url "https://github.com/mmiraly/cawa/releases/download/v1.0.0/cs-v1.0.0-darwin-arm64.tar.gz"
  version "v1.0.0"
  sha256 "ce9597b16bc4642651287b30ca11ead8ff0b0a3e4d89e9903b26a9281ed84a3c"
  license "GPL-3.0"

  # Binary is precompiled for Apple Silicon
  def install
    bin.install "cs"
    zsh_completion.install "_cs"
  end

  test do
    system "#{bin}/cs", "--help"
  end
end

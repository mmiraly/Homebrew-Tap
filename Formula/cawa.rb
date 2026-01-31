class Cawa < Formula
  desc "Context-Aware Workspace Automation"
  homepage "https://github.com/mmiraly/cawa"
  url "https://github.com/mmiraly/cawa/releases/download/v1.0.0/cs-v1.0.0-darwin-arm64.tar.gz"
  sha256 "d86b099c6da3556be2e9636c03576995a1f0fc1454cac0d42b78a0030e2fd5d4"
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

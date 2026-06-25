class Nuked < Formula
  desc "Nuke stale project dependency folders."
  homepage "https://github.com/mmiraly/nukeD"
  version "v1.0.1"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mmiraly/nukeD/releases/download/v1.0.1/nuked-v1.0.1-darwin-amd64.tar.gz"
      sha256 "bcfb7e0f5c0628b82eaa4c8ec1da80f9e4dc1c6ae4abde300b61b00292f9e090"
    else
      url "https://github.com/mmiraly/nukeD/releases/download/v1.0.1/nuked-v1.0.1-darwin-arm64.tar.gz"
      sha256 "68480ac9c838e08ba1f032ef9d714d31c23e228bb9e0bfe4e25510f8d509facc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mmiraly/nukeD/releases/download/v1.0.1/nuked-v1.0.1-linux-amd64.tar.gz"
      sha256 "b065605d969b973bd7b4202ecf1a4134da800d1457dc91beb4599a6932f155e8"
    else
      url "https://github.com/mmiraly/nukeD/releases/download/v1.0.1/nuked-v1.0.1-linux-arm64.tar.gz"
      sha256 "a5876b9c77a8fadcc57174d33a29690a99b26c5cd6ebe3f9c7d2528c51451a19"
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

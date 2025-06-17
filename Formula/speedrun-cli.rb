class SpeedrunCli < Formula
  desc "Browse speedrun.com leaderboards from your terminal"
  homepage "https://github.com/marcusziade/speedrun-cli"
  version "0.1.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marcusziade/speedrun-cli/releases/download/v0.1.0/speedrun-cli_Darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_ARM64"  # Update after release
    else
      url "https://github.com/marcusziade/speedrun-cli/releases/download/v0.1.0/speedrun-cli_Darwin_x86_64.tar.gz"
      sha256 "PLACEHOLDER_X86_64"  # Update after release
    end
  end
  
  def install
    bin.install "speedrun-cli"
  end
  
  test do
    system "#{bin}/speedrun-cli", "--version"
  end
end
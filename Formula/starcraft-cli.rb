# typed: false
# frozen_string_literal: true

class StarcraftCli < Formula
  desc "Command-line tool for tracking StarCraft 2 esports"
  homepage "https://github.com/marcusziade/StarCraftKit"
  version "2.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/marcusziade/StarCraftKit/releases/download/2.0.0/starcraft-cli-macos.tar.gz"
    sha256 "808d0166167e85c2ae292cab07e76d9fd0850acecbf96e7e8f533d20c3f289d7"

    def install
      bin.install "starcraft-cli"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/marcusziade/StarCraftKit/releases/download/2.0.0/starcraft-cli-linux.tar.gz"
      sha256 "38988096deddd680405d9feb0b37acc395c1a162202ba16f2c2b2a8887bd5eb6"
      
      def install
        bin.install "starcraft-cli"
      end
    end
  end

  test do
    system "#{bin}/starcraft-cli", "--version"
  end
end
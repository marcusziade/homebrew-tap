# typed: false
# frozen_string_literal: true

class StarcraftCli < Formula
  desc "Command-line tool for tracking StarCraft 2 esports"
  homepage "https://github.com/marcusziade/StarCraftKit"
  version "2.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/marcusziade/StarCraftKit/releases/download/2.0.0/starcraft-cli-macos.tar.gz"
    # SHA256 will need to be updated after release assets are generated
    sha256 "PLACEHOLDER_SHA256_MACOS"

    def install
      bin.install "starcraft-cli"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/marcusziade/StarCraftKit/releases/download/2.0.0/starcraft-cli-linux.tar.gz"
      # SHA256 will need to be updated after release assets are generated
      sha256 "PLACEHOLDER_SHA256_LINUX"
      
      def install
        bin.install "starcraft-cli"
      end
    end
  end

  test do
    system "#{bin}/starcraft-cli", "--version"
  end
end
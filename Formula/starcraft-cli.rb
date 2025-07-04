# typed: false
# frozen_string_literal: true

class StarcraftCli < Formula
  desc "Command-line tool for tracking StarCraft 2 esports"
  homepage "https://github.com/marcusziade/StarCraftKit"
  version "2.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/marcusziade/StarCraftKit/releases/download/2.0.0/starcraft-cli-macos.tar.gz"
    sha256 "eef1125636fb069398f4fab437352a7b8f11b8b53ceb70b6e031f6b9ecebcff4"

    def install
      bin.install "starcraft-cli"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/marcusziade/StarCraftKit/releases/download/2.0.0/starcraft-cli-linux.tar.gz"
      sha256 "e891fbe7b0edc7832ce49016255d00698811a432d3c45b3145ecd165ce829b47"
      
      def install
        bin.install "starcraft-cli"
      end
    end
  end

  test do
    system "#{bin}/starcraft-cli", "--version"
  end
end
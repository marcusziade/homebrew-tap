# typed: false
# frozen_string_literal: true

class StarcraftCli < Formula
  desc "Command-line tool for tracking StarCraft 2 esports"
  homepage "https://github.com/marcusziade/StarCraftKit"
  version "2.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/marcusziade/StarCraftKit/releases/download/2.0.0/starcraft-cli-macos.tar.gz"
    sha256 "88b03ea624f2460678e62cbfebc85fb0b9e94f09a458975eb3bd0fb6f238e8c7"

    def install
      bin.install "starcraft-cli"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/marcusziade/StarCraftKit/releases/download/2.0.0/starcraft-cli-linux.tar.gz"
      sha256 "aca263217d5fed300e4c7bea4dc721e69bd142068210ac4642351b1cc4223da9"
      
      def install
        bin.install "starcraft-cli"
      end
    end
  end

  test do
    system "#{bin}/starcraft-cli", "--version"
  end
end
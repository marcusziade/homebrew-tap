# typed: false
# frozen_string_literal: true

class StarcraftCli < Formula
  desc "Command-line tool for tracking StarCraft 2 esports"
  homepage "https://github.com/marcusziade/StarCraftKit"
  version "2.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/marcusziade/StarCraftKit/releases/download/2.0.0/starcraft-cli-macos.tar.gz"
    sha256 "c4b909ca77b86872096dfa6666a05ae3330c0a15049dc34ba78ecb0cdff50df3"

    def install
      bin.install "starcraft-cli"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/marcusziade/StarCraftKit/releases/download/2.0.0/starcraft-cli-linux.tar.gz"
      sha256 "2f8b3804eb9a50a6388763290bb6642d1ca801dae1992f9ab9e53584bdee8e54"
      
      def install
        bin.install "starcraft-cli"
      end
    end
  end

  test do
    system "#{bin}/starcraft-cli", "--version"
  end
end
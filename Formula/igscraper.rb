# typed: false
# frozen_string_literal: true

class Igscraper < Formula
  desc "A tool for downloading Instagram photos"
  homepage "https://github.com/marcusziade/igscraper"
  license "MIT"
  
  head do
    url "https://github.com/marcusziade/igscraper.git", branch: "master"
    depends_on "go" => :build
  end

  def install
    system "go", "build", "-trimpath", "-ldflags", "-w -s", "-o", bin/"igscraper", "./cmd/igscraper"
  end

  test do
    system "#{bin}/igscraper", "--version"
  end
end
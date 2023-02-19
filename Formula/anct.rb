# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Anct < Formula
  desc "💊 Unofficial CLI Client of Annict"
  homepage "https://arrow2nd.com/works/anct"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arrow2nd/anct/releases/download/v0.0.1/anct_Darwin_x86_64.tar.gz"
      sha256 "8750f8a8036cab7acc9912fae633f2160b252a46675582f7738d1cb7da25bec3"

      def install
        bin.install "anct"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arrow2nd/anct/releases/download/v0.0.1/anct_Darwin_arm64.tar.gz"
      sha256 "7703cc4eed5c8079867bb85dcfaf487437897c8fcd5d6f2714367aa2b80c846c"

      def install
        bin.install "anct"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arrow2nd/anct/releases/download/v0.0.1/anct_Linux_x86_64.tar.gz"
      sha256 "6d4c7131e715a2758bed4319e389611b5c13f91cbac3bf44f522ce4b342784d8"

      def install
        bin.install "anct"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arrow2nd/anct/releases/download/v0.0.1/anct_Linux_arm64.tar.gz"
      sha256 "23aba2da6e895e43711579e83459e61d85ce46d213350804995ece5c2395a8f8"

      def install
        bin.install "anct"
      end
    end
  end

  test do
    system "#{bin}/anct -v"
  end
end
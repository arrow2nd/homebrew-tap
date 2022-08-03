# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GomiRename < Formula
  desc "CLI tool to rename trashy file names"
  homepage "https://github.com/arrow2nd/gomi-rename"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arrow2nd/gomi-rename/releases/download/v1.0.0/gomi-rename_1.0.0_Darwin_x86_64.tar.gz"
      sha256 "375ec953e6a28369b6e63a80758e3d38c832c015e5750d4343ff9a434a4e5b05"

      def install
        bin.install "gomi-rename"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arrow2nd/gomi-rename/releases/download/v1.0.0/gomi-rename_1.0.0_Darwin_arm64.tar.gz"
      sha256 "606e8ecdac241194e7ba91ef59a0d9eb5769d7b831865420e8303a57d1d2f122"

      def install
        bin.install "gomi-rename"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/arrow2nd/gomi-rename/releases/download/v1.0.0/gomi-rename_1.0.0_Linux_x86_64.tar.gz"
      sha256 "ad5b3dfa0f49466c05361de09a5ccc1ba685a5e93171434b7649b8d92cf24b8e"

      def install
        bin.install "gomi-rename"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arrow2nd/gomi-rename/releases/download/v1.0.0/gomi-rename_1.0.0_Linux_arm64.tar.gz"
      sha256 "764ab038d80b3797884a3933ab296bd641af2ce363bd4adacd29ef2b44160663"

      def install
        bin.install "gomi-rename"
      end
    end
  end

  test do
    system "#{bin}/gomi-rename -v"
  end
end

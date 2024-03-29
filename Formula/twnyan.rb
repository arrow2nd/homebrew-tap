# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Twnyan < Formula
  desc "Twitter client for Terminal🐾"
  homepage "https://arrow2nd.com/works/twnyan"
  version "1.9.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arrow2nd/twnyan/releases/download/v1.9.5/twnyan_1.9.5_Darwin_x86_64.tar.gz"
      sha256 "e1af22ccc0912acbc389ac439440e00e5eb1c0153787d380253ba4a1e17cb8ed"

      def install
        bin.install "twnyan"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arrow2nd/twnyan/releases/download/v1.9.5/twnyan_1.9.5_Darwin_arm64.tar.gz"
      sha256 "92ac8947f2eb0bc193d201843752393b475af5ad067f98b786d91b02a2c344e3"

      def install
        bin.install "twnyan"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arrow2nd/twnyan/releases/download/v1.9.5/twnyan_1.9.5_Linux_arm64.tar.gz"
      sha256 "8356b10a2d4a926ef639cb4eef5ef4f10e4c753c4576ec0c0c8524e0f3d73f93"

      def install
        bin.install "twnyan"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/arrow2nd/twnyan/releases/download/v1.9.5/twnyan_1.9.5_Linux_x86_64.tar.gz"
      sha256 "60bc622e386e0865d7d590406a8bfe7a0c26492a43d09db8f7b0cdbee50b72ed"

      def install
        bin.install "twnyan"
      end
    end
  end

  test do
    system "#{bin}/twnyan ver"
  end
end

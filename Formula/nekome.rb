# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nekome < Formula
  desc "TUI Twitter client 🐈"
  homepage "https://arrow2nd.com/works/nekome"
  version "2.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arrow2nd/nekome/releases/download/v2.0.3/nekome_2.0.3_Darwin_x86_64.tar.gz"
      sha256 "f188718d5ccf3d29e5302e02751e56240d3d8cf22808eeeecd83925ae208aded"

      def install
        bin.install "nekome"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arrow2nd/nekome/releases/download/v2.0.3/nekome_2.0.3_Darwin_arm64.tar.gz"
      sha256 "7913f83d57dfe59a5332f07933b6c31939f246f2a76b994e91ba15181efb250a"

      def install
        bin.install "nekome"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arrow2nd/nekome/releases/download/v2.0.3/nekome_2.0.3_Linux_arm64.tar.gz"
      sha256 "cb9732bed4466bb44d952f0167fb74f121149b87efe5211767a9bf550d7a7276"

      def install
        bin.install "nekome"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/arrow2nd/nekome/releases/download/v2.0.3/nekome_2.0.3_Linux_x86_64.tar.gz"
      sha256 "a0a5eec4392e72a61fbb60b4366ffe9cb7a50f98dc7da556744bf76137cefb1a"

      def install
        bin.install "nekome"
      end
    end
  end

  test do
    system "#{bin}/nekome -v"
  end
end

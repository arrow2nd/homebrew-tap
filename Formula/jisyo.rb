# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jisyo < Formula
  desc "📚 SKK辞書マネージャ"
  homepage "https://arrow2nd.com/works/jisyo"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arrow2nd/jisyo/releases/download/v0.0.3/jisyo_Darwin_x86_64.tar.gz"
      sha256 "3736f19749338623ddd30fa67e9d024b3c40523018996e71430aaa63600681d3"

      def install
        bin.install "jisyo"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arrow2nd/jisyo/releases/download/v0.0.3/jisyo_Darwin_arm64.tar.gz"
      sha256 "9929806d35cc70f7198d6c0bcacde645b6c0fadbea0bcef3e91ea9d5953f154f"

      def install
        bin.install "jisyo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arrow2nd/jisyo/releases/download/v0.0.3/jisyo_Linux_arm64.tar.gz"
      sha256 "fda4b2601aebfe361eaf9dace9d6a9b52b375dcfb6cf735de20531dacd7a46d6"

      def install
        bin.install "jisyo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/arrow2nd/jisyo/releases/download/v0.0.3/jisyo_Linux_x86_64.tar.gz"
      sha256 "b4d4a082de3a85d4e593a1d4d8a5abdbdf45b0c0945e72577e79cff10b9e5be2"

      def install
        bin.install "jisyo"
      end
    end
  end

  test do
    system "#{bin}/jisyo -v"
  end
end

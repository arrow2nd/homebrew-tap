# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

TN_VERSION='1.5.1'

class Twnyan < Formula
  desc "Twitter client for Terminal🐾"
  homepage "https://arrow2nd.com/works/twnyan"
  url "https://github.com/arrow2nd/twnyan/releases/download/v#{TN_VERSION}/twnyan-v#{TN_VERSION}-darwin-amd64"
  sha256 "5c8e9e8115cb692641f30e4a868794bd9f842c309e8bd5f9ed84072cbdd3e2cf"
  license "MIT"
  version TN_VERSION

  def install
    bin.install "twnyan-v#{TN_VERSION}-darwin-amd64" => "twnyan"
  end
end

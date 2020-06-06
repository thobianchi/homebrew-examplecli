# This file was generated by GoReleaser. DO NOT EDIT.
class Gitlabctl < Formula
  desc "Get Gitlab Project env Vars"
  homepage "https://github.com/thobianchi/gitlabctl"
  version "0.3.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/thobianchi/gitlabctl/releases/download/v0.3.1/gitlabctl_Darwin_x86_64.tar.gz"
    sha256 "72222d7e04e3d644b9c8a86c5fa096bf4974aa5b81d6a2def8e8802d4a12936d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/thobianchi/gitlabctl/releases/download/v0.3.1/gitlabctl_Linux_x86_64.tar.gz"
      sha256 "9c83099b4eb9970d6d473b175d40c1c87c8ab2e9666ed36d6d43b89ad8022324"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/thobianchi/gitlabctl/releases/download/v0.3.1/gitlabctl_Linux_arm64.tar.gz"
        sha256 "2a11caa8d996509c125bad9f8edc45f2957a17aa71d21a6b67ed2b5e8e5bbea8"
      else
      end
    end
  end

  def install
    bin.install "gitlabctl"
  end

  test do
    system "gitlabctl --version"
  end
end

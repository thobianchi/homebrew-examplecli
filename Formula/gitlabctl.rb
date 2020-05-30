# This file was generated by GoReleaser. DO NOT EDIT.
class Gitlabctl < Formula
  desc "Get Gitlab Project env Vars"
  homepage "https://github.com/thobianchi/gitlabctl"
  version "1.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/thobianchi/gitlabctl/releases/download/1.0.1/gitlabctl_Darwin_x86_64.tar.gz"
    sha256 "b2bb375ce2dca4006d0036b5aeff530554a543486825b5c3d5375a6777b21666"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/thobianchi/gitlabctl/releases/download/1.0.1/gitlabctl_Linux_x86_64.tar.gz"
      sha256 "53e4221457af43ddf84a6862c8a48529542fa59b52f65ebc328e8e0adea31a02"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/thobianchi/gitlabctl/releases/download/1.0.1/gitlabctl_Linux_arm64.tar.gz"
        sha256 "607a46fd326a521e7d7af886545f8042b996f0e3dcbe1c871226806c2f6e4b98"
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

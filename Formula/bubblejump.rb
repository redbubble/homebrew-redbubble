# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bubblejump < Formula
  desc "Quickly get shell access to EC2 instances in our VPC"
  homepage "https://github.com/redbubble/bubblejump"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "http://apt.redbubble.com/bubblejump/v0.5.2/bubblejump_0.5.2_Darwin_arm64.tar.gz"
      sha256 "f07a6cc56ade0c3d21e1ec529df26d7ad64371f62e8efdb98f33b7e7c7d89985"

      def install
        bin.install "bubblejump"
        bash_completion.install "bash.completion" => "bubblejump"
        zsh_completion.install "zsh.completion" => "_bubblejump"
      end
    end
    if Hardware::CPU.intel?
      url "http://apt.redbubble.com/bubblejump/v0.5.2/bubblejump_0.5.2_Darwin_x86_64.tar.gz"
      sha256 "d25de39844b9c034a644b30967512fb437d80237a0b586bc13431be5e9802929"

      def install
        bin.install "bubblejump"
        bash_completion.install "bash.completion" => "bubblejump"
        zsh_completion.install "zsh.completion" => "_bubblejump"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "http://apt.redbubble.com/bubblejump/v0.5.2/bubblejump_0.5.2_Linux_arm64.tar.gz"
      sha256 "bbcc247f30179e9a07b0dffa1dda3f32c3dff4019c7692d89de0ea1d968916b8"

      def install
        bin.install "bubblejump"
        bash_completion.install "bash.completion" => "bubblejump"
        zsh_completion.install "zsh.completion" => "_bubblejump"
      end
    end
    if Hardware::CPU.intel?
      url "http://apt.redbubble.com/bubblejump/v0.5.2/bubblejump_0.5.2_Linux_x86_64.tar.gz"
      sha256 "e7ba1c61e8e0b87e22331161cce52ba99bf774befa86852cbdf1b5cd2326c2bd"

      def install
        bin.install "bubblejump"
        bash_completion.install "bash.completion" => "bubblejump"
        zsh_completion.install "zsh.completion" => "_bubblejump"
      end
    end
  end

  depends_on "yak"

  test do
    system "#{bin}/bubblejump version"
  end
end

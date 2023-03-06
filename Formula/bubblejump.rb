# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bubblejump < Formula
  desc "Quickly get shell access to EC2 instances in our VPC"
  homepage "https://github.com/redbubble/bubblejump"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "http://apt.redbubble.com/bubblejump/v0.9.1/bubblejump_0.9.1_Darwin_arm64.tar.gz"
      sha256 "d5df9d5c1c7e4292d42b7930e67e8b7ae3a51de3c906a43b94a0795b3c0e1ef3"

      def install
        bin.install "bubblejump"
        bash_completion.install "bash.completion" => "bubblejump"
        zsh_completion.install "zsh.completion" => "_bubblejump"
      end
    end
    if Hardware::CPU.intel?
      url "http://apt.redbubble.com/bubblejump/v0.9.1/bubblejump_0.9.1_Darwin_x86_64.tar.gz"
      sha256 "7c5c4ba56a5ce1fd5e47ec5f2e5b90cee8c18555223eb4e2073c939e8d547ba5"

      def install
        bin.install "bubblejump"
        bash_completion.install "bash.completion" => "bubblejump"
        zsh_completion.install "zsh.completion" => "_bubblejump"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "http://apt.redbubble.com/bubblejump/v0.9.1/bubblejump_0.9.1_Linux_arm64.tar.gz"
      sha256 "51dbc614fa77abd9d2592f6c000907460c28b9f719c04273fe680807dd978b40"

      def install
        bin.install "bubblejump"
        bash_completion.install "bash.completion" => "bubblejump"
        zsh_completion.install "zsh.completion" => "_bubblejump"
      end
    end
    if Hardware::CPU.intel?
      url "http://apt.redbubble.com/bubblejump/v0.9.1/bubblejump_0.9.1_Linux_x86_64.tar.gz"
      sha256 "f51b000ef59dcfda312ef52d1751b8d640020f42d124acd7a4540afc18a808e3"

      def install
        bin.install "bubblejump"
        bash_completion.install "bash.completion" => "bubblejump"
        zsh_completion.install "zsh.completion" => "_bubblejump"
      end
    end
  end

  def caveats
    <<~EOS
      To configure Bubblejump's SSH ProxyCommand (useful for database connections),
      add the config block to your SSH config:

      bubblejump proxycommand >> ~/.ssh/config
    EOS
  end

  test do
    system "#{bin}/bubblejump version"
  end
end

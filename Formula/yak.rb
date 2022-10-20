# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  version "1.6.5"

  depends_on "pinentry-mac"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/redbubble/yak/releases/download/v1.6.5/yak_1.6.5_darwin_arm64.tar.gz"
      sha256 "fb13ed85b1a6c891561c4470a20ae723fee5405fbcd96737c06128149c92acbc"

      def install
        bin.install "yak"
        bash_completion.install "static/completions/yak.bash" => "yak"
        zsh_completion.install "static/completions/yak.zsh" => "_yak"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/redbubble/yak/releases/download/v1.5.11/yak_1.5.11_darwin_amd64.tar.gz"
      sha256 "ef668c9a84e28c4deaef647d195cf5d36fca08d0b7ec335c78b63d9a9fcc2c72"

      def install
        bin.install "yak"
        bash_completion.install "static/completions/yak.bash" => "yak"
        zsh_completion.install "static/completions/yak.zsh" => "_yak"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/redbubble/yak/releases/download/v1.6.5/yak_1.6.5_linux_arm64.tar.gz"
      sha256 "f05242f7ea21b59991386e5742d61b84fabd143318b6f1b129febe6581be3176"

      def install
        bin.install "yak"
        bash_completion.install "static/completions/yak.bash" => "yak"
        zsh_completion.install "static/completions/yak.zsh" => "_yak"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/redbubble/yak/releases/download/v1.6.5/yak_1.6.5_linux_amd64.tar.gz"
      sha256 "86f8d01f8091392eaae161a32c5043781cab057cf19d28790e0c47c13dadbdd0"

      def install
        bin.install "yak"
        bash_completion.install "static/completions/yak.bash" => "yak"
        zsh_completion.install "static/completions/yak.zsh" => "_yak"
      end
    end
  end

  test do
    system "#{bin}/yak --help"
  end
end

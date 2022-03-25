# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  version "1.5.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/redbubble/yak/releases/download/v1.5.11/yak_1.5.11_darwin_arm64.tar.gz"
      sha256 "1d1281fae916a70ec98348f0b0bc11952f30b0623a68e70580d800b614582aee"

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
      url "https://github.com/redbubble/yak/releases/download/v1.5.11/yak_1.5.11_linux_arm64.tar.gz"
      sha256 "e4e7e35e9f2a4651f02b657d8b7a57d3e70dea42291861424404068bc17fdd49"

      def install
        bin.install "yak"
        bash_completion.install "static/completions/yak.bash" => "yak"
        zsh_completion.install "static/completions/yak.zsh" => "_yak"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/redbubble/yak/releases/download/v1.5.11/yak_1.5.11_linux_amd64.tar.gz"
      sha256 "ed3709633bf1fe7df0cda2165cb19d9158115b1fbbcca85eba8dc68d129176b4"

      def install
        bin.install "yak"
        bash_completion.install "static/completions/yak.bash" => "yak"
        zsh_completion.install "static/completions/yak.zsh" => "_yak"
      end
    end
  end

  depends_on "pinentry-mac"

  test do
    system "#{bin}/yak --help"
  end
end
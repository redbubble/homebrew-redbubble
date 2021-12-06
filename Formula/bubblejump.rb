# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bubblejump < Formula
  desc "Quickly get shell access to EC2 instances in our VPC"
  homepage "https://github.com/redbubble/bubblejump"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "http://apt.redbubble.com/bubblejump/v0.6.0/bubblejump_0.6.0_Darwin_arm64.tar.gz"
      sha256 "27cc07fef04ae487b92a9df73a30113486447cec37edbdd5979f9223404e126c"

      def install
        bin.install "bubblejump"
        bash_completion.install "bash.completion" => "bubblejump"
        zsh_completion.install "zsh.completion" => "_bubblejump"
      end
    end
    if Hardware::CPU.intel?
      url "http://apt.redbubble.com/bubblejump/v0.6.0/bubblejump_0.6.0_Darwin_x86_64.tar.gz"
      sha256 "8b4fedfded9105bb5c0ad22d23e42e6bcf8783334a5dca41f15cda7f47071f66"

      def install
        bin.install "bubblejump"
        bash_completion.install "bash.completion" => "bubblejump"
        zsh_completion.install "zsh.completion" => "_bubblejump"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "http://apt.redbubble.com/bubblejump/v0.6.0/bubblejump_0.6.0_Linux_arm64.tar.gz"
      sha256 "e5426ac48a9c88bc8d360d79a565585e75f3fcec8df22363f1dee1f55e36d13c"

      def install
        bin.install "bubblejump"
        bash_completion.install "bash.completion" => "bubblejump"
        zsh_completion.install "zsh.completion" => "_bubblejump"
      end
    end
    if Hardware::CPU.intel?
      url "http://apt.redbubble.com/bubblejump/v0.6.0/bubblejump_0.6.0_Linux_x86_64.tar.gz"
      sha256 "d737fb944715eaff45f4c335db0d9de95a53c95308200bfc8bfd0d27811d5993"

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

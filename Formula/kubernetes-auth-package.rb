# frozen_string_literal: true

require_relative "../private_github_downloader.rb"
class KubernetesAuthPackage < Formula
  desc "Authentication info for accessing Redbubble's Kubernetes clusters"
  homepage "https://github.com/redbubble/kubernetes-auth-package"
  version "0.7.0"

  on_macos do
    url "https://github.com/redbubble/kubernetes-auth-package/releases/download/0.7.0/rb-k8s-auth-pkg.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "1cdb52f5d7cb472c9efe295dc8357dcbdec4a9d3b96941bdf796fbf844e67fe6"

    def install
      prefix.install Dir["*.yml"]

      get_kubeconfig = <<~EOS
        #!/bin/bash

        echo -n "$(echo $(ls #{prefix}/*))" | sed 's/\ /:/g'
      EOS

      system(%{echo "#{get_kubeconfig}" >> get-kubeconfig.sh})
      system(%{chmod +x get-kubeconfig.sh})

      bin.install "get-kubeconfig.sh"
    end
  end

  on_linux do
    url "https://github.com/redbubble/kubernetes-auth-package/releases/download/0.7.0/rb-k8s-auth-pkg.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "1cdb52f5d7cb472c9efe295dc8357dcbdec4a9d3b96941bdf796fbf844e67fe6"

    def install
    end
  end

  depends_on "yak"
  depends_on "kubectl@1.22"

  test do
    system "kubectl config get-contexts | grep eks-production-us-east-1"
  end

  def caveats
    <<~EOS
      Kubernetes configuration has been installed in #{opt_prefix}.

      If you haven't done so already, source the config files in your .zshrc:

      $ echo 'export KUBECONFIG="${KUBECONFIG:-${HOME}/.kube/config}:$(#{bin}/get-kubeconfig.sh)"' >> .zshrc
    EOS
  end
end

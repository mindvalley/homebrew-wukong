# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Wukong < Formula
  desc "A Swiss-army Knife CLI For Mindvalley Developers"
  homepage "https://github.com/mindvalley/wukong-cli"
  version "2.1.5"

  on_macos do
    on_arm do
      url "https://github.com/mindvalley/wukong-cli/releases/download/#{version}/wukong-v#{version}-macOS-arm.tar.gz"
      sha256 "e4699aba4f63a728393ebf9e7f9efd43e7279a5b59e786f4f501b13f5e6fb4dc"
    end

    on_intel do
      url "https://github.com/mindvalley/wukong-cli/releases/download/#{version}/wukong-v#{version}-macOS-x86.tar.gz"
      sha256 "221d5f0aec30d255f5d7ba3dd0cbf141af10dc457c4258c4f8e82ef74e881129"
    end
  end

  on_linux do
    url "https://github.com/mindvalley/wukong-cli/releases/download/#{version}/wukong-v#{version}-linux-x86.tar.gz"
    sha256 "cfa169d1ee5beaf41b8a7c53745edc1eeb374470254fca8a6021a8b879a4eb1d"
  end


  def install
    bin.install "wukong"

    bash_completion.install "completions/bash/wukong.bash"
    zsh_completion.install "completions/zsh/_wukong"
    fish_completion.install "completions/fish/wukong.fish"
  end
end


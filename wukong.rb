# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Wukong < Formula
  desc "A Swiss-army Knife CLI For Mindvalley Developers"
  homepage "https://github.com/mindvalley/wukong-cli"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/mindvalley/wukong-cli/releases/download/#{version}/wukong-v#{version}-macOS-arm.tar.gz"
      sha256 "ea7a57e6d6cf11460c4505e743a246f65699ab9bcb5f5b60d410058b41205678"
    end

    on_intel do
      url "https://github.com/mindvalley/wukong-cli/releases/download/#{version}/wukong-v#{version}-macOS-x86.tar.gz"
      sha256 "c680ebeabc44266a3c7cabbeeef8da19b96cc8869d3037532809cd46dbe319c9"
    end
  end

  on_linux do
    url "https://github.com/mindvalley/wukong-cli/releases/download/#{version}/wukong-v#{version}-linux-x86.tar.gz"
    sha256 "7686af15154c670469624ec97a9d25d397ac4c08d17940528e604ed3b24507e9"
  end


  def install
    bin.install "wukong"

    bash_completion.install "completions/bash/wukong.bash"
    zsh_completion.install "completions/zsh/_wukong"
    fish_completion.install "completions/fish/wukong.fish"
  end
end


# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Wukong < Formula
  desc "A Swiss-army Knife CLI For Mindvalley Developers"
  homepage "https://github.com/mindvalley/wukong-cli"
  version "2.0.0-alpha1"

  on_macos do
    on_arm do
      url "https://github.com/mindvalley/wukong-cli/releases/download/#{version}/wukong-v#{version}-macOS-arm.tar.gz"
      sha256 "e2b160905629058d243d6dc92e2f77fae29eb1d306bf28f850f375d52661f9dc"
    end

    on_intel do
      url "https://github.com/mindvalley/wukong-cli/releases/download/#{version}/wukong-v#{version}-macOS-x86.tar.gz"
      sha256 "ac3d4d5b31426ac2df2292f636c4e4a712f3f3a30032cbf1301f0c98a51811bb"
    end
  end

  on_linux do
    url "https://github.com/mindvalley/wukong-cli/releases/download/#{version}/wukong-v#{version}-linux-x86.tar.gz"
    sha256 "7e21c512410a7cf449b544cb0138a02a5995b7f17c59188eef10644f566a352e"
  end


  def install
    bin.install "wukong"

    bash_completion.install "completions/bash/wukong.bash"
    zsh_completion.install "completions/zsh/_wukong"
    fish_completion.install "completions/fish/wukong.fish"
  end
end


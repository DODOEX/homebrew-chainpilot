class Chainpilot < Formula
  desc "CLI tool for on-chain DeFi operations on EVM-compatible networks"
  homepage "https://github.com/DODOEX/ChainPilot"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DODOEX/ChainPilot/releases/download/v0.3.0/chainpilot-macos-aarch64.tar.gz"
      sha256 "365ebe2960fc0016f5d0f3ff7ad19be3a4e83886c6e50828b05aa0f0c4da0c4d"
    end

    on_intel do
      url "https://github.com/DODOEX/ChainPilot/releases/download/v0.3.0/chainpilot-macos-x86_64.tar.gz"
      sha256 "ab031f6e7ec8177d2b374562807d58d889a158362f6496985120837f52e05a30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DODOEX/ChainPilot/releases/download/v0.3.0/chainpilot-linux-aarch64.tar.gz"
      sha256 "4d31727788291f7298219e7e440988da2b2b63db7713177c165bbfda9b390322"
    end

    on_intel do
      url "https://github.com/DODOEX/ChainPilot/releases/download/v0.3.0/chainpilot-linux-x86_64.tar.gz"
      sha256 "3075a5209d6aa436b4223850a45ae523ce18787628c0b09cd8d56543af72ca66"
    end
  end

  def install
    bin.install "chainpilot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chainpilot --version")
  end
end

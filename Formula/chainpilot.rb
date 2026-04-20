class Chainpilot < Formula
  desc "CLI tool for on-chain DeFi operations on EVM-compatible networks"
  homepage "https://github.com/DODOEX/ChainPilot"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DODOEX/ChainPilot/releases/download/v0.1.1/chainpilot-macos-aarch64.tar.gz"
      sha256 "ace606c44ec94504fe094b2a4ed588633cdcfcfcbb098cb7a09c87e3bded8e9a"
    end

    on_intel do
      url "https://github.com/DODOEX/ChainPilot/releases/download/v0.1.1/chainpilot-macos-x86_64.tar.gz"
      sha256 "690d7a0953e495719d07dcbc955ec52b7e959c505a6467297a8dcd90fa97d144"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DODOEX/ChainPilot/releases/download/v0.1.1/chainpilot-linux-aarch64.tar.gz"
      sha256 "71627487b7e4bc533b5047da45c9cfeeb8370c5297b6b88a90e54817708a9fb3"
    end

    on_intel do
      url "https://github.com/DODOEX/ChainPilot/releases/download/v0.1.1/chainpilot-linux-x86_64.tar.gz"
      sha256 "b688842f46dc67f2e728549926a11d5d86f83e44ab8b5aa6b8b1c24c37139e79"
    end
  end

  def install
    bin.install "chainpilot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chainpilot --version")
  end
end

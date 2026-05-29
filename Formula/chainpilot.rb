class Chainpilot < Formula
  desc "CLI tool for on-chain DeFi operations on EVM-compatible networks"
  homepage "https://github.com/DODOEX/ChainPilot"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DODOEX/ChainPilot/releases/download/v0.2.0/chainpilot-macos-aarch64.tar.gz"
      sha256 "5fcb68fd1abfe66a6926ddccd9ba266963883b0948ce9108ee6cb7e07b139660"
    end

    on_intel do
      url "https://github.com/DODOEX/ChainPilot/releases/download/v0.2.0/chainpilot-macos-x86_64.tar.gz"
      sha256 "69f690499f5c9166c11c3cd6edaa68ec0f0e87e3c5550024d6dd550eb0c93213"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DODOEX/ChainPilot/releases/download/v0.2.0/chainpilot-linux-aarch64.tar.gz"
      sha256 "6b52c8fa3f9a66941e93c01785f52c41c8e9f8561cae7731670e61f3e3826671"
    end

    on_intel do
      url "https://github.com/DODOEX/ChainPilot/releases/download/v0.2.0/chainpilot-linux-x86_64.tar.gz"
      sha256 "1b52b7c0cdebc85fcc8090b4b477362a2ee6c36492b55b1431191f0e05e059b9"
    end
  end

  def install
    bin.install "chainpilot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chainpilot --version")
  end
end

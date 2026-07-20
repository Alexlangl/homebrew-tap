class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.0.1/codex-companion-0.0.1-macos-arm64.tar.gz"
      sha256 "dd700abf6e07bebbdfc8c8eb58eedbd6517bd973f695ad2cadab1bb218fa22f1"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.0.1/codex-companion-0.0.1-macos-x64.tar.gz"
      sha256 "79207496667cef613239cf7c90a12a43da598b96a9abd12ab839e4e089112488"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.0.1/codex-companion-0.0.1-linux-arm64.tar.gz"
      sha256 "d8ae6f4e4bcb04c1abf3bcc249961136fb3edc581743f3bedea87cdf3802be2f"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.0.1/codex-companion-0.0.1-linux-x64.tar.gz"
      sha256 "9fb0bf09ddcfd78c31c5225b5d6a66030b42065f9207b627edec0436272c07e3"
    end
  end

  def install
    bin.install "codex-companion"
    bin.install "codex-companion-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codex-companion --version")
    assert_path_exists bin/"codex-companion-tui"
  end
end

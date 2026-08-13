class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.26/codex-companion-0.1.26-macos-arm64.tar.gz"
      sha256 "c538b080a514a7855ae1e531ee462487dcda60033c61a6331f32438e9632b5b1"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.26/codex-companion-0.1.26-macos-x64.tar.gz"
      sha256 "48fc7413faff69d720d4ade7cb57f1386928c42eb732fd8e3cfb8264f41e23da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.26/codex-companion-0.1.26-linux-arm64.tar.gz"
      sha256 "12204a07a55a8769a2bb5bddf611c1fd837b62958e9c7a09cd389f4432b1dec5"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.26/codex-companion-0.1.26-linux-x64.tar.gz"
      sha256 "2d3afee18fc91a5bf5230d316edd8c220d036e98163f73412931ffdd130fbc3b"
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

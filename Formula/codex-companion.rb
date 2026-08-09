class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.23/codex-companion-0.1.23-macos-arm64.tar.gz"
      sha256 "419e79ab2ba38fed8248fb799ccee5852ef0a1937596587130511f618dd87cc6"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.23/codex-companion-0.1.23-macos-x64.tar.gz"
      sha256 "55ddaec56198983e5744ec8ecb3c648943bfe2f9dcc52c242125dfe6e5dcd9e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.23/codex-companion-0.1.23-linux-arm64.tar.gz"
      sha256 "604c00931713c5b9bb8fa6636fe3e306e0422a334ab30035f31c59f0a7ea2dd8"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.23/codex-companion-0.1.23-linux-x64.tar.gz"
      sha256 "978c7c3dc6f9820ce8456bbacfc449a44b0fa6e9b58cdf11fa80e5bd84d8574a"
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

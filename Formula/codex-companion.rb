class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.13/codex-companion-0.1.13-macos-arm64.tar.gz"
      sha256 "cec6259bb03edc29f27ce988e0da2a3aa7e04f1d74bb493c0fa2d98b486c5a8c"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.13/codex-companion-0.1.13-macos-x64.tar.gz"
      sha256 "c64d0744dfd5a0a02531cd6a0df142dbd3a956421fc5d59f40c7fb6da561e405"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.13/codex-companion-0.1.13-linux-arm64.tar.gz"
      sha256 "6c96b8561fa829b6c6e1bd5e9b83e510d3792bb65734ef7181ba6a5c8a8e2ce0"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.13/codex-companion-0.1.13-linux-x64.tar.gz"
      sha256 "dd787ca23bc14d2eea943c4142afb7c67dc0addcd41d43d5f7027ed5267594aa"
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

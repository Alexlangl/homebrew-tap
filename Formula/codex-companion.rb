class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.46"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.46/codex-companion-0.1.46-macos-arm64.tar.gz"
      sha256 "4a180b83bfc15523ad7ac9765ed71adb9b0f93f493bad42865a59c2fa1e45ea5"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.46/codex-companion-0.1.46-macos-x64.tar.gz"
      sha256 "5580f1c4d993ab9798a82a45686b0a0d85923273448030444934c2f906dd1eb0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.46/codex-companion-0.1.46-linux-arm64.tar.gz"
      sha256 "043cc451c609fd8c0bf24cff49ff20e01c5d8a4338ca87cab8b7f4c8709d465c"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.46/codex-companion-0.1.46-linux-x64.tar.gz"
      sha256 "76a8d97907bd40c1dde338d6ed2f26da87ad7cad04e3ac92bf6184baa4ce92ba"
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

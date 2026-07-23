class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.3/codex-companion-0.1.3-macos-arm64.tar.gz"
      sha256 "4d32a791612cdc7ae92c18db54b75140e0d06e28fc8a156682cc61e84cb84884"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.3/codex-companion-0.1.3-macos-x64.tar.gz"
      sha256 "debf7e92095aa0df8924b5fccecb6a7648b75afe44ac2e88e1edae0b692b02f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.3/codex-companion-0.1.3-linux-arm64.tar.gz"
      sha256 "5c2461736bffb4d9d46c46b663548272a50ae3ae8532194a3803c83babde5d5d"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.3/codex-companion-0.1.3-linux-x64.tar.gz"
      sha256 "1103343ac85e30668a0349aa334c71e392207b7cd7286113be83ef5298b41df2"
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

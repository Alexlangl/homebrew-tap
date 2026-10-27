class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.47"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.47/codex-companion-0.1.47-macos-arm64.tar.gz"
      sha256 "1a70a0843597ddaa4877ecd5382723603aa5c08f192b72724d004092082bcf33"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.47/codex-companion-0.1.47-macos-x64.tar.gz"
      sha256 "c3691f33870db44ab36ad1f4ca17d76b1350152742aea0f1b388223a07c56a1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.47/codex-companion-0.1.47-linux-arm64.tar.gz"
      sha256 "286f1825e9d031bc2866f6277bc39947ca594c405e6c78340c0becc0d304ae52"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.47/codex-companion-0.1.47-linux-x64.tar.gz"
      sha256 "ab74f4b5788f535760ccb014ca39935f3a9d39704725c17022cb9aa748d93520"
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

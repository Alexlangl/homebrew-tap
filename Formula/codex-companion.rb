class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.28/codex-companion-0.1.28-macos-arm64.tar.gz"
      sha256 "acfaf1968f9be07cdb152c496be7b880e2e76f377ee1880f2372752fe644be21"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.28/codex-companion-0.1.28-macos-x64.tar.gz"
      sha256 "6b3e6fff46b7b0819a01d5254f5c91cccaa18e2ef171824e30f10b09aac16ce2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.28/codex-companion-0.1.28-linux-arm64.tar.gz"
      sha256 "3ddd6c993e8b9e2314a6e2cb8e201919090fcf69c0a6668bafe351709a7393eb"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.28/codex-companion-0.1.28-linux-x64.tar.gz"
      sha256 "d92325efa0b67e29168633c5c2e01f6c8cf6bd1f1feb08464d4fed7371532593"
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

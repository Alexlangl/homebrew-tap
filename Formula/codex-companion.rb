class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.29/codex-companion-0.1.29-macos-arm64.tar.gz"
      sha256 "cdd7f8acaa793d29931992d0a6152c1fd6d6c6a49cf2ec4fc385318222e38455"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.29/codex-companion-0.1.29-macos-x64.tar.gz"
      sha256 "6b47bab37882d267a198c80687cf5c56033a31d7fb92a10553e5ae2bc2979915"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.29/codex-companion-0.1.29-linux-arm64.tar.gz"
      sha256 "ca3d730fb9a081c3cfba0c4347d0abe2d9be43e56fb4840de3715f720b27c2a6"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.29/codex-companion-0.1.29-linux-x64.tar.gz"
      sha256 "ac900d6f49aad4c66fa37665d2c751ddd54c3b2c8d34b51fe37e6630d221f570"
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

class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.8/codex-companion-0.1.8-macos-arm64.tar.gz"
      sha256 "534e9020259bf8d74b3fc8cbdb3c5c7b8e7bf94f61c0bded78f9989313b7974a"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.8/codex-companion-0.1.8-macos-x64.tar.gz"
      sha256 "51cf726e2706a06d1d529aa17a335b93d31f9e39493eddff6e219e7d7056622e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.8/codex-companion-0.1.8-linux-arm64.tar.gz"
      sha256 "e4fba9858060c29e5cf0002591e85516ac549bc5803462a248086b2aa42b73d9"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.8/codex-companion-0.1.8-linux-x64.tar.gz"
      sha256 "d369e97d9599f883f8d8a691600d5d74b221fa29d724640aca43133c7fedc65f"
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

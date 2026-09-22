class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.38"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.38/codex-companion-0.1.38-macos-arm64.tar.gz"
      sha256 "7513adcc022091d9d14484c2b99c622d5c2831cf301e08729501b97deb8e00b9"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.38/codex-companion-0.1.38-macos-x64.tar.gz"
      sha256 "86716bec7ccf0ede5916739d51d7a5e1728e495e0137d58d50913b20447c9f92"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.38/codex-companion-0.1.38-linux-arm64.tar.gz"
      sha256 "64afba8b7c1fff7701f306d996ee25905001bd39bb9d21b6a059f35a68b83fc2"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.38/codex-companion-0.1.38-linux-x64.tar.gz"
      sha256 "cea78e8dcd480f30b5f16a62e082dcf9f41ef09b6d4c3372468ed476093129c8"
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

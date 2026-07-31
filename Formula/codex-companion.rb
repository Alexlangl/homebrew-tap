class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.11/codex-companion-0.1.11-macos-arm64.tar.gz"
      sha256 "21c353738c9321d4ca8d1d0cc30eacc4e3a4c88f5c03ecc37e74efd5ba82b88a"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.11/codex-companion-0.1.11-macos-x64.tar.gz"
      sha256 "f82380d7a9f495024dbe03a35c0799a7fe160a8a7977dd17ce161be40584dceb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.11/codex-companion-0.1.11-linux-arm64.tar.gz"
      sha256 "99f6fefc4af8552c30d6c88874a5adb036bc47adb91713b6738296dfb831c631"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.11/codex-companion-0.1.11-linux-x64.tar.gz"
      sha256 "e47fdec3e8ec3f4a0cec78f21296e22106a16cfdc4db90d23140dd7a592f2a11"
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

class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.9/codex-companion-0.1.9-macos-arm64.tar.gz"
      sha256 "8c0c3cd5f0e6f6e2813c2859584bb0efad63e6bb835b68b1b7af89788ea830ec"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.9/codex-companion-0.1.9-macos-x64.tar.gz"
      sha256 "cf71de81bd80756995346759dbb90cb73446322c4b8d30fbc6785eb3d8b6b841"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.9/codex-companion-0.1.9-linux-arm64.tar.gz"
      sha256 "f83092e50c17031f6ded3bb5e6a83b480d5cc2f8810c02b174fa05414d638ae5"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.9/codex-companion-0.1.9-linux-x64.tar.gz"
      sha256 "66ed5d0b2170601e23787be6e585f921697d5fbae6f3b75ca2e393ff3960fed6"
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

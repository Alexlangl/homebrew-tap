class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.42"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.42/codex-companion-0.1.42-macos-arm64.tar.gz"
      sha256 "09bec2bb28b01a5fff48bdb96d61637c8f6268240ceb1bbb3d56d5e2eb915b53"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.42/codex-companion-0.1.42-macos-x64.tar.gz"
      sha256 "eb7ece0291497341372a2612bae7eff46eacf7aa72708051f171f2fbda9ff8bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.42/codex-companion-0.1.42-linux-arm64.tar.gz"
      sha256 "2b2f759d3babb30e08242d3c172569e3235be5e47a71d4ab058f4531939b0368"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.42/codex-companion-0.1.42-linux-x64.tar.gz"
      sha256 "7f79dcbabcea6b250a226476750ffa2847b7a0493adf60a39d9d36e83f295fb0"
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

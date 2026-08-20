class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.27/codex-companion-0.1.27-macos-arm64.tar.gz"
      sha256 "9c88a6d47b6ea211a9298c33d9ab79171fb7bcf4f3f206b86258bb09beb782e4"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.27/codex-companion-0.1.27-macos-x64.tar.gz"
      sha256 "09a968b2e9a7dd0fa4277afe361ab2246889b03ef30e0203a16cf1d57e8e5213"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.27/codex-companion-0.1.27-linux-arm64.tar.gz"
      sha256 "157dfa192fd4f63dc82557593016e273811031db1bb0ffa024ae11e7cb2605fa"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.27/codex-companion-0.1.27-linux-x64.tar.gz"
      sha256 "bbfd111c900b65a754998555a91a617e276ce7d2546cb356c5ac339a3115af99"
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

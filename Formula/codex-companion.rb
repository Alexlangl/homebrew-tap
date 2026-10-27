class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.48"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.48/codex-companion-0.1.48-macos-arm64.tar.gz"
      sha256 "df21bf0d0ff728f2af00953a5b7c5ebb1f19678639181202fc399ee83e9eff37"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.48/codex-companion-0.1.48-macos-x64.tar.gz"
      sha256 "8c8caff97fae00e37beb1165fb4d8f1d63a9061400e41b106351148658868d43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.48/codex-companion-0.1.48-linux-arm64.tar.gz"
      sha256 "72e1afff579f0906cd3ec62e711e4aa709f0ec8908278897091da7d7b21f3813"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.48/codex-companion-0.1.48-linux-x64.tar.gz"
      sha256 "07a1bf4b8f34670ed67794ef710b5d4b041584ca25260ff8c9b99e5a05676795"
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

class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.31"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.31/codex-companion-0.1.31-macos-arm64.tar.gz"
      sha256 "41826228729a1ea78f5bb4e6b50d11397d2dda3cd9c7193e4f890901a705099c"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.31/codex-companion-0.1.31-macos-x64.tar.gz"
      sha256 "3384b792ff77695d259326700474b280a7bbc70b7358f998a4a332593553da70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.31/codex-companion-0.1.31-linux-arm64.tar.gz"
      sha256 "219e5bdbfcfcf4b412bcaeefcd8480af17664718777d4b71be6c2fb1b04acf33"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.31/codex-companion-0.1.31-linux-x64.tar.gz"
      sha256 "d6df498675ba032c17b45ac3805538a6bce1ae485aa343fb0496c05557334fdf"
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

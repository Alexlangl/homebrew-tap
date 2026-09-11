class CodexCompanion < Formula
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"
  version "0.1.36"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.36/codex-companion-0.1.36-macos-arm64.tar.gz"
      sha256 "db015eda9d992155107204fc12546232456f2abf21be6ee6603678bcb3108705"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.36/codex-companion-0.1.36-macos-x64.tar.gz"
      sha256 "45de7d8fdcdce804f14bb1adc7de40e1806bc395faca49f3f610599e67db73d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.36/codex-companion-0.1.36-linux-arm64.tar.gz"
      sha256 "61ea8dfa2a3cbdd00a9c746a2c30a06eaf8b2f1579ba83c14ee95c67d3cd16e0"
    else
      url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.36/codex-companion-0.1.36-linux-x64.tar.gz"
      sha256 "3bcfb8e3cef5d91ff1b5cd20a9cb57dc0f710b7712f0f5f9ea48d42dd9a7fabf"
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

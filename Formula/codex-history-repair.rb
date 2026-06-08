class CodexHistoryRepair < Formula
  desc "Repair local Codex history after provider switching"
  homepage "https://github.com/Alexlangl/codex-history-repair"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-history-repair/releases/download/v0.1.2/codex-history-repair-0.1.2-macos-arm64.tar.gz"
      sha256 "9a68e8f88715f60457a1b6fadd14f87b142fb769da56cce725ad7f7ff01f95ca"
    else
      url "https://github.com/Alexlangl/codex-history-repair/releases/download/v0.1.2/codex-history-repair-0.1.2-macos-x64.tar.gz"
      sha256 "b6ed40df11b50af245c378d5302138fce8a7c299b470df26b75349ebc3d298fc"
    end
  end

  def install
    bin.install "codex-history-repair"
  end

  test do
    system "#{bin}/codex-history-repair", "--help"
  end
end

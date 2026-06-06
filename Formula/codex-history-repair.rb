class CodexHistoryRepair < Formula
  desc "Repair local Codex history after provider switching"
  homepage "https://github.com/Alexlangl/codex-history-repair"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexlangl/codex-history-repair/releases/download/v0.1.0/codex-history-repair-0.1.0-macos-arm64.tar.gz"
      sha256 "e409541d61f7e56351fa5373e3ee99489e495038af69b67fdc9014a3b9c2ef1c"
    else
      url "https://github.com/Alexlangl/codex-history-repair/releases/download/v0.1.0/codex-history-repair-0.1.0-macos-x64.tar.gz"
      sha256 "94d576fc1a5ab0adaba813e8221914ad1d12641b0a4acd564b7820e573c5ff73"
    end
  end

  def install
    bin.install "codex-history-repair"
  end

  test do
    system "#{bin}/codex-history-repair", "--help"
  end
end

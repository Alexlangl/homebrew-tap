cask "codex-companion" do
  version "0.1.31"
  sha256 "3d0365c4ab86ffcb17bf179f1b000436f5112d90107fad66b17ff9d3a9fd4c3f"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.31/Codex-Companion-0.1.31-macos-universal-dmg.dmg"
  name "Codex Companion"
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"

  app "Codex Companion.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Codex Companion.app"]
  end

  zap trash: "~/.codex-companion"
end

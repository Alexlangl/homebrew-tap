cask "codex-companion" do
  version "0.1.15"
  sha256 "696c6b545a6cc8e7f69a3b648e7d818a4d303439aaed4c59f9e3c3d6c7744894"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.15/Codex-Companion-0.1.15-macos-universal-dmg.dmg"
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

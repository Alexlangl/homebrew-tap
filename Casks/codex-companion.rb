cask "codex-companion" do
  version "0.1.19"
  sha256 "211bc511271293d44991ad8194376d4a3f1bda64aac0b771aa06086d0b834bad"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.19/Codex-Companion-0.1.19-macos-universal-dmg.dmg"
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

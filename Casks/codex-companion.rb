cask "codex-companion" do
  version "0.1.4"
  sha256 "4f7a02f62621006bf3f3ce6a15e11fcf9bd01da23ad93bd729ca12dfeb377d7e"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.4/Codex-Companion-0.1.4-macos-universal-dmg.dmg"
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

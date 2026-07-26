cask "codex-companion" do
  version "0.1.6"
  sha256 "aa4251c648ebae0a52a14ff828d980646202013fdcb928f1030528d29f220549"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.6/Codex-Companion-0.1.6-macos-universal-dmg.dmg"
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

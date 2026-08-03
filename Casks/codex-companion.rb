cask "codex-companion" do
  version "0.1.12"
  sha256 "3eaaf6e0985dbe916c8ccef60edb6e02f729c501016c943f3d7378307302b05c"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.12/Codex-Companion-0.1.12-macos-universal-dmg.dmg"
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

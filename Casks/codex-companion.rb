cask "codex-companion" do
  version "0.1.47"
  sha256 "52d7924f7bfbd90037834a563dcb1ec616d55f6e1a55790f6c48b2d68793ed25"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.47/Codex-Companion-0.1.47-macos-universal-dmg.dmg"
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

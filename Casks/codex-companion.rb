cask "codex-companion" do
  version "0.1.3"
  sha256 "f22ed40eff3fe4b6699630fbd80e8d3ec75a00ecebfc13c74c973aa29cac11c7"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.3/Codex-Companion-0.1.3-macos-universal-dmg.dmg"
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

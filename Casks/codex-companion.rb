cask "codex-companion" do
  version "0.1.48"
  sha256 "bbd8187bd693a82eda1cfbe59485901db454eaebeb96bfc1fbd7fff86645f099"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.48/Codex-Companion-0.1.48-macos-universal-dmg.dmg"
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

class Vibedeck < Formula
  desc "Local-first usage and provenance dashboard for AI coding agents"
  homepage "https://github.com/ivasuy/vibedeck"
  url "https://registry.npmjs.org/vibedeck-cli/-/vibedeck-cli-0.1.1.tgz"
  sha256 "f7feedf5f103caafe29fed65f8ff2efd9fadd7523f9233fa2604d811f5403088"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
  end

  test do
    assert_match "vibedeck", shell_output("#{bin}/vibedeck --help")
  end
end

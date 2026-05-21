class Vibedeck < Formula
  desc "Local-first usage and provenance dashboard for AI coding agents"
  homepage "https://github.com/ivasuy/vibedeck"
  url "https://registry.npmjs.org/vibedeck-cli/-/vibedeck-cli-0.1.3.tgz"
  sha256 "293c4f2b3a0cf59f0cdb7144b54520589d8ca2eed6530a0b5a8ad79b278d0a54"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/vibedeck"
  end

  test do
    assert_match "vibedeck", shell_output("#{bin}/vibedeck --help")
  end
end

require "language/node"

class Supstack < Formula
  desc "Evidence-based supplement intelligence — CLI and MCP server"
  homepage "https://supstack.me/developers/cli"
  url "https://registry.npmjs.org/@supstack/cli/-/cli-0.15.0.tgz"
  sha256 "d779f54b8a95fc6794676ccd84373ea846c02ab45ed63fd1f051aa42d00fa4f9"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supstack --version")
  end
end

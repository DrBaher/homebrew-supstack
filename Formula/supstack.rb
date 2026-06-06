require "language/node"

class Supstack < Formula
  desc "Evidence-based supplement intelligence — CLI and MCP server"
  homepage "https://supstack.me/developers/cli"
  url "https://registry.npmjs.org/@supstack/cli/-/cli-0.14.0.tgz"
  sha256 "720719191f0590b40472ebe0a7f533e25a17f08f6db7314d8df2216e943414fd"
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

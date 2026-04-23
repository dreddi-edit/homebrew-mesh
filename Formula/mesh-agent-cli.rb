require "language/node"

class MeshAgentCli < Formula
  desc "Mesh terminal agent CLI"
  homepage "https://github.com/dreddi-edit/mesh-agent-cli"
  url "https://registry.npmjs.org/@edgarelmo/mesh-agent-cli/-/mesh-agent-cli-0.2.59.tgz"
  sha256 "62a690f6ace0bb4c6c112bf335f1fbd26a07134b350952a9e51a8b9286dca243"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/mesh", "--version"
  end
end

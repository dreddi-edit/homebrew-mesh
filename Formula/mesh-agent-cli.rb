require "language/node"

class MeshAgentCli < Formula
  desc "Mesh terminal agent CLI"
  homepage "https://github.com/dreddi-edit/mesh-agent-cli"
  url "https://registry.npmjs.org/@edgarelmo/mesh-agent-cli/-/mesh-agent-cli-0.3.19.tgz"
  sha256 "7bed75ea9b498be82e8157b3b65dc93597ac3b4f02a4c4c4aad65d16b1a4ac51"
  # The npm package is UNLICENSED/all rights reserved. Homebrew uses
  # :cannot_represent when no supported SPDX license applies.
  license :cannot_represent

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/mesh", "--version"
  end
end

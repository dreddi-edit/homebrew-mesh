require "language/node"

class MeshAgentCli < Formula
  desc "Mesh terminal agent CLI"
  homepage "https://github.com/dreddi-edit/mesh-agent-cli"
  url "https://registry.npmjs.org/@edgarelmo/mesh-agent-cli/-/mesh-agent-cli-0.3.4.tgz"
  sha256 "987ab2d0b15673931e597b19efbda950967189b09501fe38cf4915647b8b22d0"
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

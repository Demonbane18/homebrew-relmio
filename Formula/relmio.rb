class Relmio < Formula
  desc "Set up a private OpenAI-compatible endpoint for self-hosted n8n"
  homepage "https://github.com/Demonbane18/relmio"
  url "https://registry.npmjs.org/relmio/-/relmio-0.15.0.tgz"
  sha256 "d99e174e32be3c4c6049c581154f587c16ba22bf04afd01f76fa539781f4c850"
  license "Apache-2.0"

  depends_on "python" => :build
  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_predicate bin/"relmio", :executable?
    system bin/"relmio", "--version"
  end
end

class Relmio < Formula
  desc "Set up a private OpenAI-compatible endpoint for self-hosted n8n"
  homepage "https://github.com/Demonbane18/relmio"
  url "https://registry.npmjs.org/relmio/-/relmio-0.17.5.tgz"
  sha256 "f6c6b9600fd7c528eade0d6e681bbee76de2b9660c9f8c8ae4da6dab7d4e5c73"
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

class Awsome < Formula
  desc "AWSome AWS TUI"
  homepage "https://github.com/vijaykiran/awsome-cli"
  version "0.1.0"
  license "Apache-2.0"

  if Hardware::CPU.intel?
    url "https://github.com/vijaykiran/awsome-cli/releases/download/v0.1.0/awsome-0.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "0b54a917a7a5ee2880fd793da2ac0d1db80675ff11471f2be440d7c5122ce331"
  elsif Hardware::CPU.arm?
    url "https://github.com/vijaykiran/awsome-cli/releases/download/v0.1.0/awsome-0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "e6ff3b93534874ebad24f2bc11a6efcb11778cd173d8ec843a80639966466835"
  end

  def install
    bin.install "awsome"
  end

  test do
    system "#{bin}/awsome", "--version"
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitSemv < Formula
  desc "This is a Git plugin for Semantic Versioning."
  homepage "https://github.com/linyows/git-semv"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linyows/git-semv/releases/download/v1.2.0/git-semv_darwin_x86_64.tar.gz"
      sha256 "75b32256c94d35b44bc01966dea44d69bf82b499698de9aee5937cd45db164e5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/linyows/git-semv/releases/download/v1.2.0/git-semv_darwin_arm64.tar.gz"
      sha256 "c43dfd5364c69a919dc77ef914a7aa7ba6f59a990a7cf592a142eec12b693a9d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linyows/git-semv/releases/download/v1.2.0/git-semv_linux_x86_64.tar.gz"
      sha256 "b082e003a04aaa19dd69f22da4a3be3474101d996df860bb319746f7a78b2a0b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linyows/git-semv/releases/download/v1.2.0/git-semv_linux_arm64.tar.gz"
      sha256 "fd84dab502443e221b87eb01e398c1b6baa1e6a6a3ebd0f55c7a200a29b56305"
    end
  end

  depends_on "git"

  def install
    bin.install "git-semv"
    #  zsh_completion.install "misc/completion.zsh"
    #  bash_completion.install "misc/completion.bash"
    #  fish_completion.install "misc/completion.fish"
  end

  test do
    system "#{bin}/git-semv -v"
  end
end

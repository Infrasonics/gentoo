# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Eselect module for management of multiple llvm versions"
HOMEPAGE="https://wiki.gentoo.org/wiki/Project:LLVM"
SRC_URI="https://github.com/Infrasonics/eselect-llvm/releases/download/${PV}/llvm.eselect-${PV}.xz"

KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86 ~ppc-aix ~x64-cygwin ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~m68k-mint ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"

LICENSE="GPL-2"
SLOT="0"
IUSE=""

RDEPEND=">=app-admin/eselect-1.4.15"

S="${WORKDIR}"

src_install() {
	insinto /usr/share/eselect/modules
	newins llvm.eselect-${PV} llvm.eselect
}

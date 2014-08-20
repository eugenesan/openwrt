# Use the default kernel version if the Makefile doesn't override it

LINUX_RELEASE?=1

ifeq ($(LINUX_VERSION),3.9.11)
  LINUX_KERNEL_MD5SUM:=edbf88eb7f7d34dbd5d3887726790755
endif
ifeq ($(LINUX_VERSION),3.10.49)
  LINUX_KERNEL_MD5SUM:=9774e12764e740d49c80eda77d0ef3eb
endif
ifeq ($(LINUX_VERSION),3.14.16)
  LINUX_KERNEL_MD5SUM:=469c879236ed694f60b81122e91ca02e
endif

# disable the md5sum check for unknown kernel versions
LINUX_KERNEL_MD5SUM?=x

split_version=$(subst ., ,$(1))
merge_version=$(subst $(space),.,$(1))
KERNEL_BASE=$(firstword $(subst -, ,$(LINUX_VERSION)))
KERNEL=$(call merge_version,$(wordlist 1,2,$(call split_version,$(KERNEL_BASE))))
ifeq ($(firstword $(call split_version,$(KERNEL_BASE))),2)
  KERNEL_PATCHVER=$(call merge_version,$(wordlist 1,3,$(call split_version,$(KERNEL_BASE))))
else
  KERNEL_PATCHVER=$(KERNEL)
endif


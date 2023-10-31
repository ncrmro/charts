FROM debian:bookworm-slim

RUN apt update && apt install dnsmasq pxelinux syslinux-common syslinux-efi nfs-kernel-server apache2 --yes

RUN mkdir -p /tftpboot/bios && \
    mkdir -p /tftpboot/efi64 && \
    mkdir -p /tftpboot/netboot && \
    mkdir -p /tftpboot/pxelinux.cf && \
    mkdir -p /tftpboot/netboot/amd64/archlinux && \
    mkdir -p /tftpboot/netboot/amd64/debian && \
    mkdir -p /tftpboot/netboot/amd64/ubuntu && \
    mkdir /tftpboot/netboot/amd64/ubuntu/desktop && \
    mkdir /tftpboot/netboot/arm64 && \
    mkdir -p /nfs/nfsboot/{archlinux,ubuntu} && \
    mkdir -p /nfs/nfsboot/ubuntu/desktop  && \
    mkdir -p /nfs/nfsboot/archlinux && \
    mkdir -p /nfs/nfsboot/ubuntu && \
    mkdir -p /nfs/nfsboot/ubuntu/desktop && \
    mkdir -p /nfs/nfsboot/archlinux && \
    mkdir -p /nfs/nfsboot/ubuntu && \
    mkdir -p /nfs/nfsboot/ubuntu/desktop && \
    mkdir -p /var/www/html/httpboot/archlinux && \
    mkdir -p /var/www/html/httpboot/ubuntu && \
    mkdir -p /var/www/html/httpboot/ubuntu/dekstop


RUN cp /usr/lib/syslinux/modules/bios/ldlinux.c32 /tftpboot/bios && \
    cp /usr/lib/syslinux/modules/bios/vesamenu.c32 /tftpboot/bios && \
    cp /usr/lib/syslinux/modules/bios/libcom32.c32 /tftpboot/bios && \
    cp /usr/lib/syslinux/modules/bios/libutil.c32 /tftpboot/bios && \
    cp /usr/lib/PXELINUX/pxelinux.0 /tftpboot/bios && \
    cp /usr/lib/syslinux/modules/efi64/ldlinux.e64 /tftpboot/efi64 && \
    cp /usr/lib/syslinux/modules/efi64/vesamenu.c32 /tftpboot/efi64 && \
    cp /usr/lib/syslinux/modules/efi64/libcom32.c32 /tftpboot/efi64 && \
    cp /usr/lib/syslinux/modules/efi64/libutil.c32 /tftpboot/efi64 && \
    cp /usr/lib/SYSLINUX.EFI/efi64/syslinux.efi /tftpboot/efi64

RUN ln -rs /tftpboot/pxelinux.cfg /tftpboot/bios  && \
    ln -rs /tftpboot/pxelinux.cfg /tftpboot/efi64
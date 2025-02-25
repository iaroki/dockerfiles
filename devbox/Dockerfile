FROM quay.io/archlinux/archlinux:base-devel-20250224.0.313122

ENV BUILDER_USER=builder
ENV BUILDER_HOME=/tmp/${BUILDER_USER}
USER root
RUN useradd --home=${BUILDER_HOME} --system ${BUILDER_USER} && usermod -L ${BUILDER_USER}
RUN echo "${BUILDER_USER} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# prepare base system
USER ${BUILDER_USER}
RUN sudo pacman -Syu --noconfirm git yq && \
    git clone https://aur.archlinux.org/paru.git ${BUILDER_HOME}/paru && \
    cd ${BUILDER_HOME}/paru && \
    makepkg -si --noconfirm && \
    cd / && sudo rm -rf /var/cache/pacman/pkg/* ${BUILDER_HOME}

# install packages
COPY packages.yaml /tmp/packages.yaml
RUN paru -Syu --noconfirm $(yq -r '.packages | join(" ")' /tmp/packages.yaml) && \
    sudo rm -rf /var/cache/pacman/pkg/* ${BUILDER_HOME}

# finish system
USER root

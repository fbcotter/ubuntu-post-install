FROM tensorflow/tensorflow:r0.10.0
MAINTAINER Fergal Cotter <fbcotter.cam@gmail.com>
RUN apt-get update -y
RUN apt-get -qq update
RUN apt-get install -y curl
RUN apt-get install -y git
RUN apt-get install -y vim
RUN apt-get install -y man
RUN apt-get install -y bc
RUN apt-get install -y libhdf5-dev

# Install openCV 3
RUN apt-get install -y build-essential cmake pkg-config
RUN apt-get install -y libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev
RUN apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
RUN apt-get install libgtk2.0-dev

# Get h5py for loading and saving .hdf5 data files
RUN pip install h5py
RUN pip install hdf5storage
RUN pip install dtcwt


# Move in some local config files for customizing
RUN mkdir -p /root/.vim/bundle
RUN git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim
ADD vimrc /root/.vimrc
ADD .bash_profile /root/.bash_profile
RUN vim +PluginInstall +qall

#!/bin/sh
echo "start setup:"

base_dir=`pwd`
vim_plus_dir="$base_dir/vim_plus"
vim_rc_path="$base_dir/vim_plus/.vimrc"
vim_third_plus_dir="$base_dir/vim_plus/third_part_plus"
echo $vim_plus_dir
echo $vim_rc_path
echo $vim_third_plus_dir

ln -s $vim_rc_path ~/.vimrc
ln -s $vim_plus_dir ~/.vim

cd $vim_plus_dir/autoload
ln -s ../third_part_plus/vim-plug/plug.vim plug.vim
cd $base_dir
#ln -s "$vim_third_plus_dir/vim-plug/plug.vim"  "$vim_plus_dir/autoload/plug.vim"
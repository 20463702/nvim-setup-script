echo "+-------------------+"
echo "| Setting up Neovim |"
echo "+-------------------+"

echo "setting XDG_CONFIG_HOME env variable"
echo "export XDG_CONFIG_HOME=\"$HOME/.config/\"" >> ~/.bashrc
echo "setting vim alias to neovim"
echo "alias vim=\"nvim\"" >> ~/.bashrc

echo "installing wbthomason's packer for nvim"
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "installing setup files"
git clone https://github.com/20463702/neovim-setup/ $XDG_CONFIG_HOME/
mv $XDG_CONFIG_HOME/neovim-setup $XDG_CONFIG_HOME/nvim

cd $XDG_CONFIG_HOME/nvim
echo "
Neovim setup complete!

!IMPORTANT!
Open neovim and run \":PackerSync\"


"

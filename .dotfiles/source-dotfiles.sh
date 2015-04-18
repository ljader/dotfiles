
dotfiles_path=~/.dotfiles
echo "sourcing dotfiles from: $dotfiles_path"

function load_all() {
  file_type=$1
  [ ! -d "$dotfiles_path/$file_type" ] && mkdir "$dotfiles_path/${file_type}"
  for src in $dotfiles_path/${file_type}/*; do
      filename="$(basename ${src})"
      [ ${filename:0:1} = "_" ] && continue
      dest="${dotfiles_path}/${file_type}/${filename}"
	  echo "sourcing $dest"
      source $dest
  done
}

load_all common
load_all windows

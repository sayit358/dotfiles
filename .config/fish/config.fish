fish_hybrid_key_bindings

function lg --wraps=lazygit --description 'alias lg=lazygit'
  lazygit $argv;
end

function v --wraps=nvim --description 'alias v=nvim'
  nvim $argv;
end

function weather --wraps='curl wttr.in' --description 'alias weather=curl wttr.in'
  curl wttr.in $argv;
end


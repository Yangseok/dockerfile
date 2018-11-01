chsh -s `which zsh`
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

echo alias gogl=\"/home/nola/Work/dockerfile/devOps/gitlab\" >> ~/.zshrc
echo alias dcd=\"docker-compose down\" >> ~/.zshrc
echo alias dcu=\"docker-compose up -d\" >> ~/.zshrc
echo PROMPT=\'%{$fg_bold[white]%}%M %{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}\' >> ~/.zshrc
echo ''
echo ''
echo ''
echo ''
echo ''
echo '--------------------------------------------------------------------------'
echo '--------------------------------------------------------------------------'
echo "  __  __ __  __          _____ _______   __   __   ___  ";
echo " |  \/  |  \/  |   /\   |  __ \__   __| /_ | / /  / _ \ ";
echo " | \  / | \  / |  /  \  | |__) | | |     | |/ /_ | (_) |";
echo " | |\/| | |\/| | / /\ \ |  _  /  | |     | | '_ \ > _ < ";
echo " | |  | | |  | |/ ____ \| | \ \  | |     | | (_) | (_) |";
echo " |_|  |_|_|  |_/_/    \_\_|  \_\ |_|     |_|\___/ \___/ ";
echo "   _____        __ _                                    ";
echo "  / ____|      / _| |                                   ";
echo " | (___   ___ | |_| |___      ____ _ _ __ ___           ";
echo "  \___ \ / _ \|  _| __\ \ /\ / / _\` | '__/ _ \          ";
echo "  ____) | (_) | | | |_ \ V  V / (_| | | |  __/          ";
echo " |_____/ \___/|_|  \__| \_/\_/ \__,_|_|  \___|          ";
echo "  _____           _                                     ";
echo " |  __ \         | |                                    ";
echo " | |__) |_ _  ___| | ____ _  __ _  ___  ___             ";
echo " |  ___/ _\` |/ __| |/ / _\` |/ _\` |/ _ \/ __|            ";
echo " | |  | (_| | (__|   < (_| | (_| |  __/\__ \            ";
echo " |_|   \__,_|\___|_|\_\__,_|\__, |\___||___/            ";
echo "                             __/ |                      ";
echo "                            |___/                       ";
echo ''
echo ''
echo ''
echo ''
echo '--------------------------------------------------------------------------'
echo "  __     _    _                      _                       ";
echo " /_ |   | |  | |                    | |                      ";
echo "  | |   | |__| | ___  _ __ ___   ___| |__  _ __ _____      __";
echo "  | |   |  __  |/ _ \| '_ \` _ \ / _ \ '_ \| '__/ _ \ \ /\ / /";
echo "  | |_  | |  | | (_) | | | | | |  __/ |_) | | |  __/\ V  V / ";
echo "  |_(_) |_|  |_|\___/|_| |_| |_|\___|_.__/|_|  \___| \_/\_/  ";
echo "                                                             ";
echo "                                                             ";
echo 'Installing homebrew...'
echo 'Installation instructions: https://brew.sh/'
echo 'What is homebrew?: Homebrew is a package manager for Mac. Read more here: '
echo 'https://brew.sh/'
echo '--------------------------------------------------------------------------'

sudo chown -R $(whoami) /usr/local/var/homebrew
sudo chown -R $(whoami) /usr/local/Homebrew/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

echo ''
echo ''
echo '--------------------------------------------------------------------------'
echo "  ___                         _   ";
echo " |__ \                       | |  ";
echo "    ) |   __      ____ _  ___| |_ ";
echo "   / /    \ \ /\ / / _\` |/ _ \ __|";
echo "  / /_ _   \ V  V / (_| |  __/ |_ ";
echo " |____(_)   \_/\_/ \__, |\___|\__|";
echo "                    __/ |         ";
echo "                   |___/          ";
echo 'Installing wget...'
echo 'Installation instructions: https://www.hacksparrow.com/how-to-install-wget-on-your-mac.html'
echo 'What is wget?: Wget is a computer program that retrieves content from web servers.'
echo 'Read more here: https://en.wikipedia.org/wiki/Wget'
echo '--------------------------------------------------------------------------'

brew install wget

echo ''
echo ''
echo '--------------------------------------------------------------------------'
echo "  ____           _ _   ";
echo " |___ \         (_) |  ";
echo "   __) |    __ _ _| |_ ";
echo "  |__ <    / _\` | | __|";
echo "  ___) |  | (_| | | |_ ";
echo " |____(_)  \__, |_|\__|";
echo "            __/ |      ";
echo "           |___/       ";
echo 'Installing git...'
echo 'Installation instructions: https://git-scm.com/book/en/v1/Getting-Started-Installing-Git'
echo 'What is git?: Git is a version control and software distribution system.'
echo 'Read more here: https://git-scm.com/video/what-is-git'
echo '--------------------------------------------------------------------------'

brew install git

echo ''
echo ''
echo '--------------------------------------------------------------------------'
echo "  _  _     _____          _                         ";
echo " | || |   |  __ \        | |                        ";
echo " | || |_  | |__) |__  ___| |_ _ __ ___   __ _ _ __  ";
echo " |__   _| |  ___/ _ \/ __| __| '_ \` _ \ / _\` | '_ \ ";
echo "    | |_  | |  | (_) \__ \ |_| | | | | | (_| | | | |";
echo "    |_(_) |_|   \___/|___/\__|_| |_| |_|\__,_|_| |_|";
echo "                                                    ";
echo "                                                    ";
echo 'Installing postman...'
echo 'Installation instructions: (just use homebrew)'
echo 'What is postman?: Postman is an API testing client. Read more here:'
echo 'https://www.getpostman.com/'
echo '--------------------------------------------------------------------------'

brew cask install postman

echo ''
echo ''
echo '--------------------------------------------------------------------------'
echo "  _____            _                  ";
echo " | ____|      /\  | |                 ";
echo " | |__       /  \ | |_ ___  _ __ ___  ";
echo " |___ \     / /\ \| __/ _ \| '_ \` _ \ ";
echo "  ___) |   / ____ \ || (_) | | | | | |";
echo " |____(_) /_/    \_\__\___/|_| |_| |_|";
echo "                                      ";
echo "                                      ";
echo 'Installing Atom...'
echo 'Installation instructions: Use brew cask install'
echo 'What is Atom?: Atom is an IDE (like Sublime, but better + has git integration)'
echo '--------------------------------------------------------------------------'

brew cask install atom

echo ''
echo ''
echo '--------------------------------------------------------------------------'
echo "    __                          ";
echo "   / /                          ";
echo "  / /_     _ ____   ___ __ ___  ";
echo " | '_ \   | '_ \ \ / / '_ \` _ \ ";
echo " | (_) |  | | | \ V /| | | | | |";
echo "  \___(_) |_| |_|\_/ |_| |_| |_|";
echo "                                ";
echo "                                ";
echo 'Installing nvm (node.js version manager)...'
echo 'Installation instructions: https://gist.github.com/d2s/372b5943bce17b964a79'
echo 'What is nvm?: NVM is a version manager for node.js. Read more here:'
echo 'https://davidwalsh.name/nvm'
echo '--------------------------------------------------------------------------'

curl https://raw.githubusercontent.com/creationix/nvm/v0.11.1/install.sh | bash
touch ~/.bash_profile
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bash_profile
echo 'source ~/.nvm/nvm.sh' >> ~/.bash_profile
echo 'export PATH="$HOME/.npm-packages/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile


echo ''
echo ''
echo '--------------------------------------------------------------------------'
echo "  ______                   _        _     ";
echo " |____  |                 | |      (_)    ";
echo "     / /   _ __   ___   __| | ___   _ ___ ";
echo "    / /   | '_ \ / _ \ / _\ |/ _ \ | / __|";
echo "   / /    | | | | (_) | (_| |  __/_| \__ \\";
echo "  /_(_)   |_| |_|\___/ \__,_|\___(_) |___/";
echo "                                  _/ |    ";
echo "                                 |__/     ";
echo 'Installing node.js...'
echo 'Installation instructions: https://www.digitalocean.com/community/tutorials/how-to-install-node-js-with-nvm-node-version-manager-on-a-vps'
echo 'What is node.js?: node.js is a server-side JavaScript platform / framework.'
echo 'Read more here: https://www.tutorialspoint.com/nodejs/nodejs_introduction.htm'
echo '--------------------------------------------------------------------------'

nvm install 8.4.0
echo 'nvm install 8.4.0' >> ~/.bash_profile
source ~/.bash_profile
node --version

echo ''
echo ''
echo '--------------------------------------------------------------------------'
echo "   ___      _____                  _   ";
echo "  / _ \    / ____|                | |  ";
echo " | (_) |  | |  __ _ __ _   _ _ __ | |_ ";
echo "  > _ <   | | |_ | '__| | | | '_ \| __|";
echo " | (_) |  | |__| | |  | |_| | | | | |_ ";
echo "  \___(_)  \_____|_|   \__,_|_| |_|\__|";
echo "                                       ";
echo "                                       ";
echo 'Installing Grunt...'
echo 'Installation instructions: use npm. https://gruntjs.com/getting-started'
echo 'What is grunt?: Grunt is a way to automate JavaScript tasks (contatenation, minification, testing, etc.)'
echo 'Read more here: https://gruntjs.com/'
echo '--------------------------------------------------------------------------'

npm install -g grunt
npm install -g grunt-cli

echo ''
echo ''
echo '--------------------------------------------------------------------------'
echo "   ___     _____       _       ";
echo "  / _ \   / ____|     | |      ";
echo " | (_) | | |  __ _   _| |_ __  ";
echo "  \__, | | | |_ | | | | | '_ \ ";
echo "    / /  | |__| | |_| | | |_) |";
echo "   /_(_)  \_____|\__,_|_| .__/ ";
echo "                        | |    ";
echo "                        |_|    ";
echo 'Installing Gulp...'
echo 'Installation instructions: use npm.'
echo 'What is gulp?: Like Grunt, Gulp is yet another way to automate JavaScript tasks.'
echo 'Read more here: https://gulpjs.com/ and here: https://stackoverflow.com/questions/34287542/what-are-the-differences-between-grunt-gulp-js-and-bower-why-when-to-use-the'
echo '--------------------------------------------------------------------------'

npm install -g gulp

echo ''
echo ''
echo '--------------------------------------------------------------------------'
echo "  __  ___     _______       _ _   _              _____                     ";
echo " /_ |/ _ \   |__   __|     (_) | | |            |  __ \                    ";
echo "  | | | | |     | |_      ___| |_| |_ ___ _ __  | |__) | __ _____  ___   _ ";
echo "  | | | | |     | \ \ /\ / / | __| __/ _ \ '__| |  ___/ '__/ _ \ \/ / | | |";
echo "  | | |_| |     | |\ V  V /| | |_| ||  __/ |    | |   | | | (_) >  <| |_| |";
echo "  |_|\___(_)    |_| \_/\_/ |_|\__|\__\___|_|    |_|   |_|  \___/_/\_\\__, |";
echo "                                                                      __/ |";
echo "                                                                     |___/ ";
echo 'Installing Twitter Proxy...'
echo 'Installation instructions: use npm.'
echo 'Read more here: https://www.npmjs.com/package/twitter-proxy'
echo '--------------------------------------------------------------------------'

npm install -g twitter-proxy
source ~/.bash_profile

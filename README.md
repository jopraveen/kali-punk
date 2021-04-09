![main-logo](https://github.com/jopraveen/kali-punk/blob/main/assets/main-logo.png) <br><br>

<p align="center">
  <img src="https://img.shields.io/badge/Maintained%3F-Yes-green?style=for-the-badge">
  <img src="https://img.shields.io/github/license/jopraveen/kali-punk?style=for-the-badge">
  <img src="https://img.shields.io/github/stars/jopraveen/kali-punk?style=for-the-badge">
  <img src="https://img.shields.io/github/issues/jopraveen/kali-punk?color=violet&style=for-the-badge">
  <img src="https://img.shields.io/github/forks/jopraveen/kali-punk?color=teal&style=for-the-badge">
</p>

<h2 align="center">i3 rice Inspired by Cyberpunk 2077</h2> <br>

# 😍 Full set up
### Preview link: https://youtu.be/05Tl3i0RJ9U
### Full tutorial (how to setup this): https://youtu.be/K3udjkay6-A

<br>

# 🙆‍♂ Installing dependecies

```bash
cd kali-punk
sudo bash install.sh
```
<h4>If you get any errors in this auto installation script then please go through the manual way (See Down, I explained how to install every package clearly)</h4> 

<details>
<summary>👈 Dependencies</summary> <br>

<!--Ok The headache starts here-->

  <details>
  <summary>i3</summary> <br>

  ```bash
  sudo apt install i3
  ```
  </details>

  <details>
  <summary>polybar</summary> <br>

  ```bash
  echo -e "\n\e[40mInstalling polybar...\n"
  sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb libxcb-ewmh2
  git clone https://github.com/jaagr/polybar.git
  cd polybar && ./build.sh
  sudo apt install polybar
  install -Dm644 /usr/share/doc/polybar/config $HOME/.config/polybar/config
  ```
  </details>

  <details>
  <summary>zsh</summary> <br>

  ```bash
  sudo apt install zsh
  chsh -s $(which zsh)
  ```
  </details>

  <details>
  <summary>oh-my-zsh</summary> <br>

  ```bash
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

  chsh -s $(which zsh)
  ```

  ## Any errors?
  ### Read this: https://techdhee.in/how-to-install-zsh-in-kali-linux/#How_To_Install_ZSH_in_Kali_Linux
  </details>

  <details>
  <summary>mate-terminal</summary> <br>

  ```bash
  sudo apt install mate-terminal
  ```
  
  </details>
  
  <details>
  <summary>imagemagick</summary> <br>

  ```bash
  sudo apt install imagemagick
  ```
  
  </details>

  <details>
  <summary>compton</summary> <br>

  ```bash
  sudo apt install compton
  ```
  </details>

  <details>
  <summary>feh</summary> <br>

  ```bash
  sudo apt install feh
  ```
  </details>
  
  <details>
  <summary>ffmpeg</summary> <br>

  ```bash
  sudo apt install ffmpeg
  ```
  </details>

  <details>
  <summary>neofetch</summary> <br>

  ```bash
  sudo apt install neofetch
  ```
  </details>

  <details>
  <summary>brave-browser</summary> <br>

  ```bash
  sudo apt install apt-transport-https curl

  sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

  echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

  sudo apt update

  sudo apt install brave-browser
  ```
  </details>

  <details>
  <summary>w3m</summary> <br>

  ```bash
  sudo apt install w3m
  ```
  </details>

  <details>
  <summary>i3-gaps</summary> <br>

  ```bash
  sudo apt  install i3-gaps 
  ```
  </details>

  <details>
  <summary>ranger</summary> <br>

  ```bash
  sudo apt install ranger 
  ```
  </details>

  <details>
  <summary>rofi</summary> <br>

  ```bash
  sudo apt install rofi 
  ```
  </details>
  
  <details>
  <summary>wallset</summary> <br>

  ```bash
  git clone https://github.com/terroo/wallset
  cd wallset
  sudo bash install.sh
  ```
  ### The installer says that a package is not installed, but are you sure it is?
  ```bash
  sudo ./install.sh --force
  ```
  </details>
  
  <details>
  <summary>term-clock</summary> <br>

  ```bash
  git clone https://github.com/Souravgoswami/term-clock
  cd term-clock
  ```
  #### You can run this clock by `ruby term-clock.rb`
  </details>  
  
  <details>
  <summary>polybar-themes</summary> <br>

  ```bash
  git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
  cd polybar-themes
  chmod +x setup.sh
  ./setup.sh
  ```
  
  ##### Ok now choose option 1 that's all
  
  </details>  
  
</details>


<details>
<summary>👈 Modifications</summary> <br>
  
  <details>
  <summary>Mate-terminal</summary> 
  
  #### Go to profile preferences and change these things (in mate-terminal) 🙂
  
  + General    
      + Font: Monospace Regular 
      + Font Size: 9
      + Uncheck [Show menubar by default in new terminals]

  + Colors
      + Foreground, Background, Bold and Underline
          + Build-in schemes: Custom
          + Text color: #E30A7D
          + Bold color: #F809B7
          + Background color: #020429
      + Palette
          + Build-in schemes: Solarized

  + Background

      + Tansparent Background : set 68% transparency
    
  + Scrolling
      + Scrollbar is: disabled

  </details>
  
</details>

#### Guys this is my first ricing, So if you have any errors please put it in the issues page...  I'll try to solve it in few hours

#!/bin/zsh

# Install rust and cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh 

# Install mdbook
cargo install mdbook

# Initialize your repo
git init
mdbook init
git remote add origin # <url>
git push -u origin main

# Make a deployment workflow
mkdir -p .github/workflows/
touch .github/workflows/deploy.yml

# Launch locally
mdbook serve # or mdbook build
 
# <develop>

git add .
git commit -m "message"
git push

# Repeat!

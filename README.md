# angular-cli-chrome-docker

## What inside

- Base on Node.js (v6)
- Angular CLI (latest)
- Chrome stable (>= v59) for test

## How to Use

In your Angular project folder

```
docker run  -v `pwd`:`pwd` -w `pwd` --security-opt seccomp=your/path/to/chrome.json dockerName ng test
```

```
docker run  -v `pwd`:`pwd` -w `pwd` --security-opt seccomp=your/path/to/chrome.json dockerName ng e2e
```

## Where to find the chrome.json

[HERE :)](https://github.com/jessfraz/dotfiles/blob/master/etc/docker/seccomp/chrome.json)

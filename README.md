<p align="center">
  <br>
   <img src="https://media.giphy.com/media/lPcghSeSxVeBl8qtt1/giphy.gif" alt="A scene from Rick and Morty where Morty's head is a planet that is vomiting rainbowns" title="Shell Functions header's GIF" />
  <br>
</p>
<p align="center">
Helper functions to use in my custom shell scripts 
</p>

# Shell Functions

* [Why](#why)
* [Quickstart](#quickstart)
* [Usage](#usage)
* [License](#license)

## Why

While coding shell scripts, there are plenty of standard tasks that I need to do. This repository contains modules that can be imported by other scripts.

## Quickstart

You can import a given script with the following line:
```sh
<replace>
```

This will add all helpers functions from that module to your shell script

## Usage

Each module has it's own usage and functions. Below, I've wrote an one-liner for each module, explaining their general purpose:

* [Feedback][feedback-module]: Functions that give feedback for our user in the CLI, such as logs, spinners, and others
* [Validation][validation-module]: Functions that validate date, throwing errors when they are not valid
* [Authorization][authorization-module]: Functions that handle relevant authorization tasks

## License

This repository is distributed under the Apache 2.0 License. See [`LICENSE`][license] for more information.

[contributing]: CONTRIBUTING.md
[license]: LICENSE
[feedback-module]: modules/feedback.sh
[validation-module]: modules/validation.sh
[authorization-module]: modules/authorization.sh
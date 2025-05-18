# eSpeak NG - Commandline

## Package author note

**Important: This is an unofficial version, the chocolatey package is community maintained and only based on the releases made available by the authors, use the Contact Maintainers link for package related issues.**

## About

The eSpeak NG is a compact open source software text-to-speech synthesizer for Linux, Windows, Android and other operating systems. It supports more than 100 languages and accents. It is based on the eSpeak engine created by Jonathan Duddington.

eSpeak NG uses a "formant synthesis" method. This allows many languages to be provided in a small size. The speech is clear, and can be used at high speeds, but is not as natural or smooth as larger synthesizers which are based on human speech recordings. It also supports Klatt formant synthesis, and the ability to use MBROLA as backend speech synthesizer.

## Usage

### OPTIONS

* `-h`, `--help`:
Show summary of options.

* `--version`:
Prints the espeak library version and the location of the espeak voice data.

* `-f <text file>`:
Text file to speak.

* `--stdin`:
Read text input from stdin till to the end of a stream at once.

### EXAMPLES

* `espeak-ng "This is a test"`:
Speak the sentence "This is a test" using the default English voice.

* `espeak-ng -f hello.txt`:
Speak the contents of hello.txt using the default English voice.

* `cat hello.txt | espeak-ng`:
Speak the contents of hello.txt using the default English voice.

* `espeak-ng -x hello`:
Speak the word "hello" using the default English voice, and print the
phonemes that were spoken.

* `espeak-ng -ven-us "[[h@'loU]]"`:
Speak the phonemes "h@'loU" using the American English voice.

* `espeak-ng --voices`:
List all voices supported by eSpeak.

* `espeak-ng --voices=en`:
List all voices that speak English (`en`).

* `espeak-ng --voices=mb`:
List all voices using the MBROLA voice synthesizer.

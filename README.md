## Description
Play/Stop a radio, TV or any internet stream with <a target="_blank" href="http://domotiquefacile.fr/jarvis/">Jarvis assistant</a>.


<img src="https://raw.githubusercontent.com/QuentinCG/jarvis-radio-tv/master/presentation.png" width="500">


## Usage
```
You: Liste les radios
Jarvis: Liste des radios: ..., ..., ...

You: Liste les chaines TV
Jarvis: Liste des chaines TV: ..., ..., ...

You: Lance la radio NRJ
Javis: Radio NRJ lancée.
[Après quelques secondes, la radio se lance]

You: Arrête la radio
Jarvis: Radio arrêtée.

You: Lance la chaine TF1
Javis: Chaine TF1 lancée.
[Après quelques secondes, la chaine se lance]

You: Arrête la chaine
Jarvis: Chaine arrêtée.
```


## How to install

1) Connect a speaker to the Jack port or to any USB port.

2) Connect a screen.

3) Add this plugin to your <a target="_blank" href="http://domotiquefacile.fr/jarvis/">Jarvis assistant</a> (<a target="_blank" href="http://domotiquefacile.fr/jarvis/content/plugins">more info here</a>): ```./jarvis.sh -p https://github.com/QuentinCG/jarvis-radio-tv```

4) Configure the <a target="_blank" href="https://github.com/QuentinCG/jarvis-radio-tv/blob/master/config.sh">configuration file</a> to match your requirements (you can get the card and peripheral with `aplay -l`).

5) Enjoy


## Author
[Quentin Comte-Gaz](http://quentin.comte-gaz.com/)


## License

This project is under MIT license. This means you can use it as you want (just don't delete the plugin header).


## Contribute

If you want to add more examples or improve the plugin, just create a pull request with proper commit message and right wrapping.

# Hangman
Интерпретация лингвистической игры "Виселица"

Игрой загадывается слово и показывается количество букв загаданного слова, а вам нужно это слово отгадать.
У вас есть 7 возможностей ошибиться, после чего игра будет считаться проигранной.

Игра написана на языке программирования Ruby.

### Установка
Скопируйте репозиторий:
```
git clone git@github.com:YuriFaraf/hangman.git
```
### Запуск
Запустите ```bundle``` - игра требует установленного гема  [colorize](https://github.com/fazibear/colorize):
```
bundle install
```

После чего можно запускать игру:

```
ruby main.rb
```
### Добавление своих слов
Для добавления своих слов отредактируйте файл ```word.txt``` в папке ```data``` внутри папки игры.
Согласно традиции русских лингвистических игр, слово должно быть именем существительным, нарицательным в именительном падеже единственного числа, либо множественного числа при отсутствии у слова формы единственного числа.

Почитать об игре "Виселица" можно на Википедии:

https://ru.wikipedia.org/wiki/Виселица_(игра)
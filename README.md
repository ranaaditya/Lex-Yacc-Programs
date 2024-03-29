# Lex-Yacc-Programs

## Installation
```
sudo apt-get install flex
sudo apt-get install byacc
sudo apt-get install bison
```

## Compile & Run

### `Lex` Programs
```bash
lex <lex filepath> && gcc -lfl lex.yy.c && ./a.out < input.txt | sed '/^$/d'
```
We use `sed` to remove empty lines.

### `Lex + Yacc` Programs
```bash
flex <lex filepath>
bison -dy <yacc filepath>
gcc -lfl lex.yy.cc y.tab.c
./a.out < input.txt | sed '/^$/d'
```

OR (in short)

```bash
flex <lex filepath> && bison -dy <yacc filepath> && gcc -lfl lex.yy.cc y.tab.cc && ./a.out < input.txt | sed '/^$/d'
```

We use `sed` to remove empty lines.

## Contribution
Feel free to raise issues and send PRs for new programms

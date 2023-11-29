# pandoc resume

Basic resume generator.
From yaml to pdf using docker and pandoc/latex dockerfile

## init

- copy, hardlink or create your yaml resume file in the `input` folder following `example.yaml` 's structure.
- start the script `make-resume.sh`

```sh
sh make-resume
```

## inspiration

- [Soura Bajaj resume generator](https://github.com/sb2nov/resume)
- [Devin Tark resume generator](https://github.com/devintark/resume)
- [jankapunkt latexcv](https://github.com/jankapunkt/latexcv)

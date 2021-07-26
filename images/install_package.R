# Instalar paquetes faltantes latex https://bookdown.org/yihui/rmarkdown-cookbook/install-latex-pkgs.html

# if the log file is filename.log
tinytex::parse_install("filename.log")

# or use the `text` argument

tinytex::parse_install(
  text = "! ! LaTeX Error: File `tikz.sty' not found."
)

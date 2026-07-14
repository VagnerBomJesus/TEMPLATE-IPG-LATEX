<!--
=============================================================================
Template LaTeX IPG - https://github.com/VagnerBomJesus/TEMPLATE-IPG-LATEX
Autor base, criador e mantenedor do projeto: Vagner Bom Jesus (@VagnerBomJesus)
Ao reutilizar, distribuir ou editar, MANTER o crédito ao autor base.
Licença: GPL-3.0 (ver LICENSE).
=============================================================================
-->

# Changelog

Todas as alterações relevantes deste projeto são documentadas neste ficheiro.
O formato é baseado em [Keep a Changelog](https://keepachangelog.com/pt-BR/1.1.0/)
e o versionamento segue [SemVer](https://semver.org/lang/pt-BR/).

## [1.0.1] - 2026-07-14

### Corrigido

- `preamble.tex` estava truncado na v1.0.0 (ficheiro cortado a meio), o que impedia a compilação. Reescrito completo — o template volta a compilar (XeLaTeX + biber).
- `.gitignore` completado: passa a ignorar o `*.xdv` do XeLaTeX e ficheiros temporários do Office.

[1.0.1]: https://github.com/VagnerBomJesus/TEMPLATE-IPG-LATEX/releases/tag/v1.0.1

## [1.0.0] - 2026-07-14

Primeira versão estável do template LaTeX para o Instituto Politécnico da Guarda (IPG).

### Adicionado

- Template LaTeX completo para relatórios de estágio/projeto, TFC, teses e dissertações do IPG (ESTG), com base no modelo oficial do Mestrado em Computação Móvel.
- Estrutura modular: `frontmatter/`, `chapters/`, `backmatter/`.
- Capa oficial IPG com **dois logótipos prontos** (vertical e horizontal), alternáveis por comentário.
- Compilação **XeLaTeX + biber**; `latexmkrc` para compilar em local e no Overleaf.
- Bibliografia com `biblatex`: estilo **IEEE por defeito** e blocos comentados para **APA**, **autor-data (NP 405)** e **numérico**.
- Exemplos de citação (`\citet`/`\citep`/`\parencite`) e figura de exemplo referenciada no texto.
- Numeração de figuras, tabelas e equações por capítulo.
- Documento **todo a preto** (sem azul nem vermelho).
- `README.md` completo (âmbito, download, compilação, troca de estilos, FAQ) e `CONTRIBUTING.md` com regras de contribuição.
- Crédito ao autor base (Vagner Bom Jesus, [@VagnerBomJesus](https://github.com/VagnerBomJesus)) no cabeçalho de todos os ficheiros e nos metadados do PDF (`pdfcreator`/`pdfproducer`).

### Corrigido

- Classe do documento `report` -> `book`, para suportar `\frontmatter`, `\mainmatter` e `\backmatter`.
- Contador `lstlisting` definido via `\AtBeginDocument` (evita o erro "No counter 'lstlisting' defined").
- `csquotes` carregado antes do `biblatex` (recomendação do biblatex).

[1.0.0]: https://github.com/VagnerBomJesus/TEMPLATE-IPG-LATEX/releases/tag/v1.0.0

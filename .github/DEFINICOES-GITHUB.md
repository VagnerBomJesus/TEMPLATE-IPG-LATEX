<!--
Ficheiro de apoio (não afeta a compilação). Reúne os valores a colar nas
definições do GitHub e os comandos para publicar a release.
Autor base: Vagner Bom Jesus (@VagnerBomJesus)
-->

# Definições do GitHub + publicação da release

Estes valores **não se configuram por ficheiro** — colam-se nas definições do repositório em github.com. Este ficheiro serve só de referência.

## 1. Description (campo "About")

Colar em **About → Description**:

```
Modelo/template LaTeX para relatórios, teses e dissertações do Instituto Politécnico da Guarda (IPG) - ESTG. XeLaTeX, biblatex (IEEE), pronto para Overleaf.
```

Website (campo ao lado): o link do Overleaf (depois de publicar) ou a GitHub Pages.

## 2. Topics (tags)

Em **About → engrenagem → Topics**, adicionar (separados por Enter):

```
latex  latex-template  template  thesis-template  ipg  politecnico-guarda
instituto-politecnico-guarda  estg  tese  dissertacao  relatorio  mestrado
licenciatura  computacao-movel  xelatex  biblatex  overleaf  portugal
```

## 3. Social preview (imagem)

Em **Settings → General → Social preview → Edit → Upload an image**, carregar:

```
.github/social-preview.png
```

(1280×640; é a imagem que aparece quando o link é partilhado no Google, Twitter/X, WhatsApp, etc.)

## 4. Publicar a release v1.0.0

No teu clone local, com as alterações já feitas:

```bash
# 1) confirmar que o projeto compila
latexmk main.tex

# 2) commit de tudo
git add -A
git commit -m "Release v1.0.0 - template IPG completo (IEEE, FAQ, SEO, créditos)"

# 3) criar a tag anotada e enviar
git tag -a v1.0.0 -m "Template LaTeX IPG v1.0.0"
git push origin main
git push origin v1.0.0
```

Depois, publicar a release no GitHub — opção A (interface):
**Releases → Draft a new release → escolher a tag `v1.0.0`**, título `v1.0.0`, colar as notas da secção `## [1.0.0]` do `CHANGELOG.md`, e anexar (opcional) um ZIP do projeto.

Opção B (GitHub CLI, gera o ZIP e as notas automaticamente):

```bash
gh release create v1.0.0 --title "v1.0.0" --notes-file CHANGELOG.md
```

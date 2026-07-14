<!--
=============================================================================
Template LaTeX IPG - https://github.com/VagnerBomJesus/TEMPLATE-IPG-LATEX
Autor base, criador e mantenedor do projeto: Vagner Bom Jesus (@VagnerBomJesus)
Ao reutilizar, distribuir ou editar, MANTER o crédito ao autor base.
Licença: GPL-3.0 (ver LICENSE).
=============================================================================
-->

# Guia de Contribuição

Obrigado pelo interesse em contribuir para o **Template LaTeX IPG**.

O objetivo do projeto é oferecer um modelo LaTeX **100% atualizado e correto** para relatórios, dissertações e projetos do Instituto Politécnico da Guarda (IPG) - Escola Superior de Tecnologia e Gestão (ESTG), fiel ao modelo Word oficial da instituição.

**Autor base, criador e mantenedor:** Vagner Bom Jesus ([@VagnerBomJesus](https://github.com/VagnerBomJesus))
**Repositório:** <https://github.com/VagnerBomJesus/TEMPLATE-IPG-LATEX>

---

## Regra número 1 - crédito ao autor base

Todos os ficheiros do projeto têm, no topo, um cabeçalho a creditar o autor base. **Esse cabeçalho não pode ser removido nem alterado** em contribuições. O mesmo vale para o crédito nos metadados do PDF (`pdfcreator`/`pdfproducer` no `preamble.tex`).

Quem usa o template é autor(a) do **seu próprio relatório**; o **criador base do modelo** é e continua a ser Vagner Bom Jesus.

---

## Como contribuir (fluxo de trabalho)

1. **Fork** do repositório para a tua conta.
2. **Clonar** o teu fork:
   ```bash
   git clone https://github.com/<o-teu-utilizador>/TEMPLATE-IPG-LATEX.git
   cd TEMPLATE-IPG-LATEX
   ```
3. **Criar um branch** descritivo:
   ```bash
   git checkout -b fix/capa-coorientador
   ```
4. Fazer as alterações (ver regras abaixo).
5. **Compilar e testar** localmente (secção *Testar antes do pull request*).
6. **Commit** com mensagem clara e **push**:
   ```bash
   git commit -m "Corrige alinhamento do coorientador na capa"
   git push origin fix/capa-coorientador
   ```
7. Abrir um **Pull Request** para o branch `main`, descrevendo o que muda e porquê.

---

## Regras de estilo e formatação

- **Compilador:** o template é **XeLaTeX** (nunca `pdflatex`). Não introduzir código incompatível com XeLaTeX.
- **Codificação:** ficheiros em **UTF-8**.
- **Comentários:** em português, claros e a explicar o "porquê" quando não for óbvio.
- **Estrutura de pastas:** manter a organização (`frontmatter/`, `chapters/`, `backmatter/`, `images/`). Não mover ficheiros sem justificação.
- **Referências:** apenas **um** estilo de bibliografia ativo de cada vez no `preamble.tex`; os restantes ficam comentados e prontos a usar. O estilo por defeito é **IEEE**.
- **Cores:** o documento é **todo a preto**. Não introduzir cores no texto/legendas sem acordo prévio.
- **Cabeçalho de crédito:** manter em qualquer ficheiro novo (ver *Regra número 1*).

---

## Regras de conteúdo (parâmetros do projeto)

- **Informação institucional:** qualquer dado do IPG/ESTG (nomes, cursos, regras de formatação, estrutura do relatório) deve ser **oficial e verificado**. Indicar a fonte no PR (ex.: modelo Word oficial, despacho, página do IPG).
- **Fidelidade ao modelo oficial:** alterações de formatação (fontes, margens, tamanhos, numeração) devem manter a conformidade com o modelo Word oficial em `Doc/`.
- **Figuras/tabelas de outros autores:** têm de ter **referência bibliográfica** na legenda.
- **Exemplos:** manter os capítulos como modelo genérico e reutilizável (texto de exemplo + comentários-guia), não como um relatório concreto.
- **Sem dados pessoais reais** de terceiros nos ficheiros de exemplo.

---

## Testar antes do pull request

Antes de submeter, o projeto tem de **compilar sem erros** com a sequência completa:

```bash
xelatex main.tex
biber main
xelatex main.tex
xelatex main.tex
```

ou, mais simples:

```bash
latexmk main.tex
```

Confirmar que:

- Não há erros de compilação (avisos de "rerun"/biber são normais).
- Índices, referências e referências cruzadas (`\ref`, `\cite`) resolvem corretamente.
- Se mexeste no estilo de referências, testaste a compilação com esse estilo ativo.

---

## Reportar problemas (Issues)

Para bugs ou sugestões, abre uma *Issue* com:

- Descrição do problema e comportamento esperado.
- Passos para reproduzir.
- Ambiente: sistema operativo, distribuição LaTeX (TeX Live/MiKTeX), Overleaf, versão.
- Se aplicável, o excerto do log de erro.

---

## Convenção de mensagens de commit

Mensagens curtas, no imperativo e descritivas. Exemplos:

- `Corrige contador lstlisting no preamble`
- `Adiciona estilo APA comentado`
- `Atualiza margens conforme modelo oficial IPG`

---

## Licença das contribuições

Ao contribuir, aceitas que o teu contributo seja distribuído sob a licença **GPL-3.0** do projeto (ver [`LICENSE`](LICENSE)), mantendo-se o crédito ao autor base Vagner Bom Jesus ([@VagnerBomJesus](https://github.com/VagnerBomJesus)).

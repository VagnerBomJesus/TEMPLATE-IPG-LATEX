# Template LaTeX — Mestrado em Computação Móvel (IPG)

Modelo em LaTeX para dissertações, relatórios de estágio e projeto da ESTG — Instituto Politécnico da Guarda (IPG), Portugal.

Baseado no modelo oficial **Modelo_Relatório_Mestrado Computacao Movel_Pt.docx** fornecido pela instituição.

---

## Estrutura do Projeto

```
TEMPLATE-IPG-LATEX/
├── main.tex                          # Ficheiro principal (compilar este)
├── preamble.tex                      # Pacotes, configurações e estilos
│
├── frontmatter/                      # Páginas iniciais
│   ├── capa.tex                      # Capa do relatório
│   ├── citacao.tex                   # Citação motivacional
│   ├── dedicatoria.tex               # Dedicatória (opcional)
│   ├── agradecimentos.tex            # Agradecimentos
│   ├── resumo.tex                    # Resumo + Palavras-chave (PT)
│   ├── abstract.tex                  # Abstract + Keywords (EN)
│   └── simbolos_acronimos.tex        # Símbolos e Acrónimos (opcional)
│
├── chapters/                         # Capítulos do relatório
│   ├── 01_introducao.tex             # Cap. 1 — Introdução
│   ├── 02_trabalho_relacionado.tex   # Cap. 2 — Trabalho Relacionado
│   ├── 03_desenvolvimento.tex        # Cap. 3 — Desenvolvimento
│   ├── 04_testes_resultados.tex      # Cap. 4 — Testes e Resultados
│   └── 05_conclusoes.tex             # Cap. 5 — Conclusões
│
├── backmatter/                       # Páginas finais
│   ├── bibliografia.tex              # Referências bibliográficas
│   ├── referencias.bib               # Ficheiro BibTeX
│   └── anexos.tex                    # Anexos (A, B, ...)
│
├── images/                           # Imagens e figuras
└── Doc/                              # Modelo Word original do IPG
    └── Modelo_Relatório_Mestrado Computacao Movel_Pt.docx
```

---

## Estrutura do Relatório

O template segue rigorosamente a estrutura do modelo oficial IPG para Mestrado em Computação Móvel:

| Secção | Ficheiro | Notas |
|--------|----------|-------|
| Capa | `frontmatter/capa.tex` | Título, autor, n.º aluno, orientadores, instituição, data |
| Citação | `frontmatter/citacao.tex` | Frase motivacional à escolha |
| Dedicatória | `frontmatter/dedicatoria.tex` | **Opcional** — apagar se não aplicável |
| Agradecimentos | `frontmatter/agradecimentos.tex` | Orientadores, escola, família, etc. |
| Resumo | `frontmatter/resumo.tex` | Máx. 400 palavras + palavras-chave (PT) |
| Abstract | `frontmatter/abstract.tex` | Máx. 400 palavras + keywords (EN) |
| Índice Geral | `main.tex` | Gerado automaticamente |
| Índice de Figuras | `main.tex` | Gerado automaticamente |
| Índice de Tabelas | `main.tex` | Gerado automaticamente |
| Símbolos e Acrónimos | `frontmatter/simbolos_acronimos.tex` | **Opcional** — remover secções não aplicáveis |
| Cap. 1 — Introdução | `chapters/01_introducao.tex` | Contexto/Motivação, Problema/Objetivos, Solução, Organização |
| Cap. 2 — Trabalho Relacionado | `chapters/02_trabalho_relacionado.tex` | Métodos/Tecnologias, Soluções Existentes |
| Cap. 3 — Desenvolvimento | `chapters/03_desenvolvimento.tex` | Requisitos, Arquitetura, Módulos, Protótipo |
| Cap. 4 — Testes e Resultados | `chapters/04_testes_resultados.tex` | Teste A, Teste B, ..., Discussão |
| Cap. 5 — Conclusões | `chapters/05_conclusoes.tex` | Síntese, Contribuições, Limitações, Trabalho Futuro |
| Referências Bibliográficas | `backmatter/bibliografia.tex` | Ordem alfabética, estilo Autor-Data |
| Anexo A | `backmatter/anexos.tex` | Material suplementar |
| Anexo B | `backmatter/anexos.tex` | Material suplementar adicional |

---

## Conteúdo de Cada Secção

### Resumo / Abstract
- Máximo **400 palavras**
- Responder a: motivação do projeto → problema → solução implementada → como foi testada → resultados → contribuição para o estado da arte → conclusões

### Cap. 1 — Introdução

| Secção | O que responder |
|--------|----------------|
| 1.1 Contexto e Motivação | Em que contexto foi desenvolvido? Qual a área científica? Quem são os agentes envolvidos? Porque é relevante? |
| 1.2 Definição do Problema e Objetivos | Qual o problema do mundo real? Qual o problema técnico? Quais os objetivos mensuráveis (funcionalidades, componentes I&D)? |
| 1.3 Solução Proposta | Visão geral da solução (software/hardware). Principais tecnologias usadas. |
| 1.4 Organização do Relatório | Um parágrafo por capítulo descrevendo o seu assunto. |

### Cap. 2 — Trabalho Relacionado

| Secção | O que responder |
|--------|----------------|
| 2.1 Métodos e Tecnologias Para... | Quais os métodos, ferramentas e tecnologias usados? Como se relacionam com as partes do problema? |
| 2.2 Soluções Existentes Para... | Metodologia de pesquisa usada. Características técnicas de cada solução. Como difere da solução proposta? |

> Este capítulo demonstra o conhecimento abrangente do autor e que o trabalho foi fundamentado nesse conhecimento.

### Cap. 3 — Desenvolvimento

| Secção | O que responder |
|--------|----------------|
| 3.1 Análise de Requisitos | Processos, dados, restrições operacionais, utilizadores do sistema e como se relacionam entre si. |
| 3.2 Arquitetura do Sistema | Diagrama com todos os módulos e fluxos de dados + descrição genérica. |
| 3.3 Implementação do Módulo A | Como foi implementado? Usar diagramas, figuras, tabelas, equações e excertos de código. |
| 3.4 Implementação do Módulo B | Repetir para cada módulo do diagrama de arquitetura. |
| 3.x Implementação do Módulo... | Adicionar secções conforme necessário. |
| 3.x Protótipo Final | Apresentar e descrever o protótipo final (software/hardware). |

### Cap. 4 — Testes e Resultados

Tipos de testes a considerar:
- **Testes de Validação** — O sistema satisfaz os requisitos e especificações?
- **Testes de Verificação** — O output do sistema é o pretendido?
- **Testes de Avaliação** — Quão bom é o sistema comparado com outros?

Cada teste deve responder a: o que se queria testar → como foi preparado e realizado → resultados → conclusões.

> Sempre que possível usar testes padrão reconhecidos pela comunidade científica. Apresentar resultados com tabelas e gráficos. Incluir referência bibliográfica nas legendas quando figuras/tabelas forem de outros autores.

### Cap. 5 — Conclusões

Responder a: resumo do projeto (problema + solução) → resumo dos testes e resultados → contribuição para o estado da arte → limitações → sugestões de melhoria e trabalho futuro.

### Referências Bibliográficas

- Ordenadas **alfabeticamente** pelo último nome do primeiro autor
- Esperam-se **algumas dezenas** de referências num relatório de mestrado
- Usar referências com processo adequado de revisão científica (artigos, livros, conferências)
- Situações obrigatórias: trabalhos de outros autores, opiniões/conclusões alheias, dados/figuras/tabelas de outros, informação técnica suplementar (fichas técnicas, manuais de API)

### Símbolos e Acrónimos

- Incluir **Símbolos** apenas se houver necessidade de referenciar diversos símbolos ao longo do relatório. Para símbolos usados pontualmente, descrevê-los no texto junto da equação.
- Incluir **Acrónimos** para siglas e abreviaturas usadas no documento.
- Remover a secção (ou o ficheiro inteiro) se não se aplicar.

---

## Formatação

| Elemento | Configuração |
|----------|-------------|
| Fonte | Latin Modern, 12pt |
| Espaçamento | 1,5 linhas |
| Margens | A4 — superior/inferior 2,5 cm; interior 3 cm; exterior 2,5 cm |
| Numeração de páginas | Romana no frontmatter; árabe nos capítulos |
| Figuras e tabelas | Numeradas por capítulo: `Figura 3.1`, `Tabela 4.1` |
| Equações | Numeradas por capítulo: `(4.1)` |
| Legendas | Formato: `Figura X.Y – Título da figura.` (travessão) |
| Cor institucional | Azul IPG `#00467F` |

### Regras para Equações

- Numerar todas as equações para referência no texto
- Descrever **todas as variáveis** no texto, a seguir à equação (lista "Onde:")
- Escrever variáveis sempre em **itálico**, tanto na equação como no texto
- Usar a lista de símbolos no início do relatório se houver muitas equações com variáveis referenciadas ao longo do documento

### Regras para Figuras e Tabelas

- Formato de legenda: `Figura X.Y – Descrição (Autor, Ano).`
- Incluir **referência bibliográfica** na legenda quando a figura/tabela for de outro autor
- Usar o tipo de gráfico mais adequado para os dados apresentados

---

## Como Compilar

### Pré-requisitos

- [TeX Live](https://www.tug.org/texlive/) ou [MiKTeX](https://miktex.org/)
- Compilador: `pdflatex`
- Gestor de bibliografia: `biber`

### Compilação manual (sequência obrigatória)

```bash
pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex
```

### Compilação com latexmk (recomendado)

```bash
latexmk -pdf -bibtex main.tex
```

### Limpeza dos ficheiros auxiliares

```bash
latexmk -c
```

---

## Como Usar

### 1. Preencher os dados em `main.tex`

```latex
\newcommand{\tituloRelatorio}{Título do Meu Relatório}
\newcommand{\nomeAutor}{Nome Completo do Autor}
\newcommand{\numeroAluno}{Número do Aluno}
\newcommand{\nomeOrientador}{Prof. Doutor Nome Orientador}
\newcommand{\nomeCoorientador}{Prof. Doutor Nome Coorientador} % remover da capa se não houver
\newcommand{\mesAno}{Junho | 2025}
\newcommand{\anoLetivo}{2024/2025}
\newcommand{\tipoRelatorio}{Relatório de Estágio} % ou: Dissertação | Projeto
```

### 2. Editar os capítulos

Editar os ficheiros em `chapters/` seguindo as orientações em comentário em cada ficheiro.

### 3. Gerir referências bibliográficas

Adicionar entradas em `backmatter/referencias.bib`:

```bibtex
@article{sobrenome2024,
    author  = {Sobrenome, Nome},
    title   = {Título do Artigo},
    journal = {Nome da Revista},
    year    = {2024},
    volume  = {10},
    pages   = {1--15}
}

@book{sobrenome2023,
    author    = {Sobrenome, Nome},
    title     = {Título do Livro},
    publisher = {Editora},
    year      = {2023},
    address   = {Cidade}
}

@inproceedings{sobrenome2022,
    author    = {Sobrenome, Nome},
    title     = {Título do Artigo de Conferência},
    booktitle = {Nome da Conferência},
    year      = {2022},
    pages     = {1--8}
}
```

Citar no texto com `\citep{chave}` (entre parênteses) ou `\citet{chave}` (no texto).

### 4. Adicionar imagens

Colocar ficheiros de imagem na pasta `images/` e incluir com:

```latex
\begin{figure}[htbp]
    \centering
    \includegraphics[width=0.8\textwidth]{nome_ficheiro.png}
    \caption{Descrição da figura \citep{chave}.}
    \label{fig:identificador}
\end{figure}
```

### 5. Secções opcionais

- **Dedicatória** — apagar `\input{frontmatter/dedicatoria}` em `main.tex` se não aplicável
- **Coorientador** — remover da capa em `frontmatter/capa.tex` se não existir
- **Símbolos** — remover subsecção em `frontmatter/simbolos_acronimos.tex` se não aplicável
- **Acrónimos** — remover subsecção se não aplicável
- **Anexos** — adicionar ou remover capítulos em `backmatter/anexos.tex`

---

## Pacotes LaTeX Utilizados

| Pacote | Finalidade |
|--------|-----------|
| `babel` | Língua portuguesa |
| `geometry` | Margens (A4, inner 3 cm, outer 2,5 cm) |
| `fancyhdr` | Cabeçalhos e rodapés |
| `graphicx` | Inclusão de imagens |
| `booktabs` | Tabelas de qualidade profissional |
| `amsmath` / `amssymb` | Equações e símbolos matemáticos |
| `listings` | Código fonte com realce de sintaxe |
| `hyperref` | Hiperligações no PDF |
| `biblatex` + `biber` | Gestão de referências (Autor-Data) |
| `xcolor` | Cores (azul IPG `#00467F`) |
| `caption` | Legendas com separador travessão (–) |
| `subcaption` | Subfiguras e subtabelas |
| `longtable` | Tabelas de múltiplas páginas |
| `setspace` | Espaçamento entre linhas |
| `indentfirst` | Indentação do primeiro parágrafo |
| `pdfpages` | Inclusão de PDFs nos anexos |
| `glossaries` | Acrónimos e glossário |

---

## Instituto Politécnico da Guarda

- **Instituição:** Instituto Politécnico da Guarda (IPG)
- **Escola:** Escola Superior de Tecnologia e Gestão (ESTG)
- **Curso:** Mestrado em Computação Móvel
- **Website:** [www.ipg.pt](https://www.ipg.pt)

---

## Licença

Este template é de uso livre para estudantes e docentes do IPG.

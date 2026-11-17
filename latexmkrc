# =============================================================================
# Template LaTeX UPG  —  https://github.com/VagnerBomJesus/TEMPLATE-UPG-LATEX
# Autor base, criador e mantenedor do projeto:
#     Vagner Bom Jesus  (@VagnerBomJesus)
#
# Proprietario e autor original deste template. Ao reutilizar, distribuir ou
# editar, MANTER este credito ao autor base (nao remover). Quem usa o template
# e o autor do SEU relatorio; o criador base do modelo e Vagner Bom Jesus.
# Licenca: GPL-3.0 (ver LICENSE).
# =============================================================================

# =============================================================================
# latexmkrc — Forçar compilação com XeLaTeX (Overleaf + local)
# Este ficheiro é lido automaticamente pelo latexmk e pelo Overleaf.
# =============================================================================

$pdf_mode = 5;        # 5 = xelatex
$postscript_mode = 0;
$dvi_mode = 0;

# -----------------------------------------------------------------------------
# So no Overleaf (em compilacao local nao tem efeito).
# No Overleaf o compilador e o escolhido em Settings -> Compiler, que se
# sobrepoe ao $pdf_mode acima. Em qualquer motor, uma compilacao de raiz deste
# template precisa de 3-4 passagens + biber (~11 s), o que excede o tempo do
# plano gratuito (~10 s) e da o erro "Your project needs more compile time".
# Com uma passagem por compilacao (~2-4 s) nunca se chega ao limite: na
# primeira vez, carregar em "Recompile" 3 ou 4 vezes ate as referencias, a
# bibliografia e os indices ficarem resolvidos. Depois disso basta uma vez.
# -----------------------------------------------------------------------------
if ( defined(&overleaf_post_process) || cwd() =~ m{^/compile} ) {
    $max_repeat = 1;
}

# 🛒 TechStore - Pipeline CI/CD & DevSecOps

Este repositório contém a aplicação web **TechStore** integrada a uma esteira automatizada de CI/CD no **GitHub Actions**, focada em qualidade de código e segurança (DevSecOps).

---

## ⚡ Fluxo da Pipeline

```
[ Push / PR ] ──► [ Linting (HTMLHint) ] ──────► [ SAST (Trivy & Semgrep) ] ──► [ Deploy (GitHub Pages) ] ──► [ DAST (OWASP ZAP & Nuclei) ]
             └──► [ Secret Scanning (Gitleaks) ] ┘
```

---

## 🛠️ Ferramentas Utilizadas

| Etapa | Ferramenta | Descrição |
| :--- | :--- | :--- |
| **Linting** | HTMLHint | Validação de sintaxe e estrutura do HTML. |
| **Secrets** | Gitleaks | Inspeção do histórico de commits para impedir chaves/senhas vazadas. |
| **SAST** | Trivy & Semgrep | Análise estática do código e dependências em busca de vulnerabilidades. |
| **Deploy** | GitHub Pages | Publicação automática do site estático. |
| **DAST** | OWASP ZAP & Nuclei | Análise dinâmica de segurança contra o site em execução. |

---

## 🚀 Como Funciona

1. **Gatilhos:** A pipeline roda automaticamente em cada `push` ou `pull_request` para as branches `main` e `master`.
2. **Quality Gate:** O deploy só é realizado se o código passar sem erros nas etapas de Linting e SAST.
3. **Relatórios:** Os relatórios das ferramentas de DAST ficam disponíveis para download na aba **Actions** ao final da execução.

---

## 💻 Execução Local

```bash
# Clonar o repositório
git clone https://github.com/MateusWashington/Pipeline_CI-CD_Techstore.git
cd Pipeline_CI-CD_Techstore

# Validar HTML
npm install -g htmlhint
htmlhint *.html
```
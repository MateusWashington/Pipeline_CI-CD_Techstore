# 🚀 Pipeline CI/CD TechStore - Qualidade & DevSecOps

Este repositório contém a esteira de integração e entrega contínuas (CI/CD) desenvolvida para a plataforma **TechStore**. A pipeline foi projetada sob a filosofia **DevSecOps**, garantindo que cada nova alteração no código passe por verificações automatizadas de qualidade de código, segurança estática (SAST) e segurança dinâmica (DAST) antes e durante a publicação.

---

## 🛠️ Tecnologias e Ferramentas Utilizadas


| **Qualidade (Linting)** | `HTMLHint` | Validação estática do código HTML para garantir sintaxe correta e boas práticas. |
| **Segurança SAST** | `Trivy` | Análise estática do repositório para identificação de vulnerabilidades conhecidas no código e dependências. |
| **Deploy** | `GitHub Pages` | Publicação automatizada da aplicação web no ambiente de hospedagem do GitHub. |
| **Segurança DAST** | `OWASP ZAP` | Varredura de segurança dinâmica contra a URL da aplicação em execução para detectar falhas em tempo de execução. |

---

## 🔄 Fluxo de Execução da Pipeline

A pipeline é executada automaticamente a cada `push` ou `pull request` nas branches principais (`main` ou `master`). O fluxo é composto por 4 jobs interdependentes:

```text
git push / Pull Request
       |
       v
[qualidade-check] ----- HTMLHint (validação sintática de HTML)
[sast-security]  ----- Trivy (análise estática de vulnerabilidades)
       |
       v
[deploy] -------------- GitHub Pages (publicação do site estático)
       |
       v
[dast-security]  ----- OWASP ZAP (varredura dinâmica no site ativo)
```
# 📚 Monitor de Leitura

Este projeto contém dois arquivos:

- `monitor_de_leitura.sh`: um script Bash interativo que calcula sua média de leitura semanal, faz uma projeção mensal e indica seu "nível de leitor".
- `monitor_de_leitura.ipynb`: uma versão alternativa em Python (Jupyter Notebook) que pode ser adaptada e utilizada em ambientes gráficos ou educativos.

---

## 🔧 Como Executar o Script `.sh` no Terminal

1. **Dê permissão de execução ao script:**
   ```bash
   chmod u+x monitor_de_leitura.sh
   chmod go-w monitor_de_leitura.sh
   chmod go+r monitor_de_leitura.sh

2. Execute o script no terminal:

./monitor_de_leitura.sh

3. O script vai:

Perguntar quantas páginas você leu hoje e quantas já havia lido na semana;

Calcular o total de páginas;

Exibir uma média diária;

Fazer uma projeção de quantas páginas você leria em um mês;

Indicar seu nível de leitura (iniciante, casual, esforçado, etc.).

🐍 Explicação do Código Python (monitor_de_leitura.ipynb)
O notebook em Python realiza as mesmas funções do script Bash, porém com uma interface mais visual e adaptada para ambiente Jupyter. Ele utiliza:

input() para entrada de dados (páginas lidas);

Operações matemáticas para:

Total semanal de leitura;

Média diária;

Projeção mensal (baseada no ritmo semanal);

Condicionais (if/elif/else) para indicar o nível do leitor com base nas páginas lidas.

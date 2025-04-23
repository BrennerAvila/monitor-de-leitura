#!/bin/bash

echo "=== MONITOR DE LEITURA ==="

read -p "Quantas páginas você leu hoje? " paginas_hoje
read -p "Quantas páginas você já leu esta semana antes de hoje? " paginas_semana

total_paginas=$((paginas_hoje + paginas_semana))
media_diaria=$(echo "scale=2; $total_paginas / 7" | bc)
diferenca=$((paginas_hoje - paginas_semana))
[ $diferenca -lt 0 ] && diferenca=$(( -diferenca ))
projecao_mensal=$((total_paginas * 4))

if [ $total_paginas -le 20 ]; then
    nivel="Leitor iniciante"
elif [ $total_paginas -le 70 ]; then
    nivel="Leitor casual"
elif [ $total_paginas -le 150 ]; then
    nivel="Leitor esforçado"
elif [ $total_paginas -le 250 ]; then
    nivel="Leitor dedicado"
else
    nivel="Leitor devorador de livros!"
fi

echo -e "\n=== RELATÓRIO DE LEITURA ==="
echo "Total de páginas lidas na semana: $total_paginas"
echo "Média de leitura por dia: $media_diaria páginas"
echo "Projeção mensal (se mantiver o ritmo): $projecao_mensal páginas"
echo "Você está no nível: $nivel"

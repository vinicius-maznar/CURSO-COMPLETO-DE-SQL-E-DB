['SOMA()']

-- SOMA: Soma de números em um intervalo. ['SOMA()']

-- MÁXIMO: Maior valor de um intervalo. ['MAIOR()']

-- MÍNIMO: Menor valor de um intervalo. ['MENOR()']

-- MEDIANA: Valor do meio de um intervalor de dados. ['MED()']

-- MÉDIA: Soma-se todos os valores e divide o total pelo numero de ocorrências. ['MEDIA()']

-- MODA: Numero de ocorrências de um dado. Quanto mais esse dado se repete, maior a moda dele. ['MODO.MULTI()']
	-- Se mais um numero se repete na mesma quantidade de outro, o intervalo que contém tais números é chamado de BiModal.

-- AMPLITUDE: Substrai-se o MAIOR VALOR do MENOR VALOR. ['MAIOR() - MENOR()']
	-- Quanto menor a amplitude, menor a área em que o número se concentra.

-- VARIÂNCIA ['VAR.P()'], COMO DETERMINÁ-LA:

	/* 	1) Tirar a MÉDIA; 
		
		2) Substrair cada membro da MÉDIA (MÉDIA - Cada valor individual que compõe a média)
			- Ao substrair cada valor que compõe a média do próprio valor da média, 
			encontra-se a distância que os valores andam em relação a média.
			- Distâncias negativas não podem ser executadas e devem ser tratadas para se adequarem ao processo.

		3) Elevar cada resultado ao quadrado (Multiplicar o número por ele mesmo).

		4) Somar todos o números elevados ao quadrado.

		5) Dividir o resultado da soma dos números quadrados pelo número de ocorrências do intervalo.

	*/

-- DESVIO PADRÃO:  Tirar a raíz quadrada da variância, para retornar à escala original. ['DESVPAD.P()']

-- COEFICIENTE DE VARIAÇÃO: Dividir o desvio padrão pela média e multiplar o resultado por 100. ['(DESV / MEDIA) * 100']
	-- Usa-se para comparar diferentes conjuntos de dados.



/* QUANTO MAIORES OS NÚMEROS DAS VARIAÇÕES, MENOR SERÁ A PRECISÃO DA EFICÁCIA DA ANÁLISE */

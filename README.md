# Protocolo EcoStake - MVP de Finanças Sustentáveis

## Descrição
Este protocolo foi desenvolvido como parte da Residência em TIC 29. O objetivo é permitir que usuários realizem staking de tokens ERC-20 (EcoToken) para apoiar causas sustentáveis, recebendo em troca recompensas e Badges exclusivos (NFTs) que atestam seu impacto positivo.

## Arquitetura do Projeto
O projeto está organizado da seguinte forma:
- **/contracts**: Contratos inteligentes desenvolvidos em Solidity.
- **/scripts**: Scripts para automação e interação via Node.js.

### Contratos Principais:
1. **EcoToken (ERC-20):** Moeda de utilidade do ecossistema.
2. **EcoBadge (ERC-721):** NFTs de reconhecimento para contribuidores.
3. **EcoStaking:** Gerencia os depósitos e integra com o Oráculo Chainlink.
4. **EcoDAO:** Sistema de governança para decisões da comunidade.

## Integração com Oráculo (Etapa 4)
O contrato `EcoStaking` utiliza o Data Feed da Chainlink para consultar o preço real de ETH/USD, garantindo que as métricas do protocolo estejam alinhadas com o mercado externo.

## Endereços em Testnet (Sepolia)
- **EcoToken:** 0x375E084EB74718b8F2c31Ab3C94C2000d05C69f8
- **EcoBadge:** 0x48737257C17a3bC6a25aeEc118D910cFB88D8389
- **EcoStaking:** 0xFCd7Ef1A23C8061673170D32DD53ED649d08A038
- **EcoDAO:** 0xAde1c8Bdc815c365Aa8D2936b531ad0AfB8c9773

## Tecnologias Utilizadas
- **Solidity** (^0.8.20)
- **Remix IDE** / **VS Code**
- **Node.js** & **Ethers.js**
- **OpenZeppelin** (Padrões de Segurança)
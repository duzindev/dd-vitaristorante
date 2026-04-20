# 🦞 dd-vitaristorante

Script completo de restaurante italiano/frutos do mar para servidores FiveM, com sistema de crafting por estações, cardápio interativo, sistema de serviço e integração com os principais frameworks.

---

## Sobre

O **dd-vitaristorante** simula o funcionamento real do **La Vita Ristorante** dentro do GTA V. Funcionários entram em serviço, preparam pratos em estações específicas — desde entradas até sobremesas — e servem os clientes. O restaurante tem foco em frutos do mar e culinária mediterrânea, com pratos como lagosta grelhada, moqueca de peixe e bacalhau assado.

---

## Funcionalidades

- Sistema de crafting por estações (entradas, pratos principais, bebidas, sobremesas)
- Cardápio visual interativo (NUI)
- Balcão e estoque com stash via ox_inventory
- Sistema de entrada/saída de serviço
- Cobrança de clientes via jim-payments
- Blip ativo no mapa por padrão
- Animações em cada ação de crafting

---

## Dependências

| Recurso | Link |
|---|---|
| qbx_core | https://github.com/Qbox-project/qbx_core |
| ox_inventory | https://github.com/overextended/ox_inventory |
| ox_target | https://github.com/overextended/ox_target |
| ox_lib | https://github.com/overextended/ox_lib |
| jim-payments | https://github.com/jimathy/jim-payments |

---

## Estações de trabalho

| Estação | Ação |
|---|---|
| Balcão | Stash público para pedidos |
| Estoque | Stash restrito a funcionários |
| Entradas | Batata frita e porção de camarão |
| Pratos Principais | Bacalhau, siri burger, lagosta, moqueca e salmão |
| Bebidas | Água de coco, margarita, refrigerante, suco e vinho |
| Sobremesas | Creme brûlée, mousse de maracujá e sorvete |
| Ponto de Serviço | Entrar/sair de serviço |

---

## Cardápio

**Entradas**
- Batata Frita
- Porção de Camarão

**Pratos Principais**
- Bacalhau Assado
- Hambúrguer de Siri
- Lagosta Grelhada
- Moqueca de Peixe
- Salmão Grelhado

**Bebidas**
- Água de Coco
- Margarita
- Refrigerante
- Refrigerante Zero
- Suco
- Vinho do Porto

**Sobremesas**
- Creme Brûlée
- Mousse de Maracujá
- Sorvete

---

## Instalação

Consulte o arquivo [INSTALL.md](./INSTALL.md) para instruções detalhadas de instalação, lista de itens e configuração do job.

---

## Configuração

Todas as opções ficam em `config.lua`:

```lua
Config.Job = 'vitaristorante'    -- nome do job
Config.Stations = { ... }        -- coordenadas das estações
Config.Craft = { ... }           -- receitas por estação
Config.StorageStash = { ... }    -- configuração do estoque
Config.CounterStash = { ... }    -- configuração do balcão
```

---

## Licença

Este projeto está licenciado sob a [GNU General Public License v3.0](./LICENSE).

---

## Créditos

Desenvolvido por **DUDU** — script de uso livre para servidores FiveM.

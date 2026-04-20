# Instalação — dd-vitaristorante

Script de restaurante italiano/frutos do mar para FiveM com sistema completo de crafting, estações de trabalho e cardápio interativo.

---

## Dependências

Antes de instalar, certifique-se de que os recursos abaixo estão instalados e funcionando no seu servidor:

- [qbx_core](https://github.com/Qbox-project/qbx_core)
- [ox_inventory](https://github.com/overextended/ox_inventory)
- [ox_target](https://github.com/overextended/ox_target)
- [ox_lib](https://github.com/overextended/ox_lib)
- [jim-payments](https://github.com/jimathy/jim-payments) — para cobrança de clientes

---

## Instalação

**1. Baixe o recurso**

Copie a pasta `dd-vitaristorante` para o diretório de recursos do seu servidor:

```
resources/
└── [scripts]/
    └── dd-vitaristorante/
```

**2. Registre no server.cfg**

Adicione a linha abaixo no seu `server.cfg`, após as dependências:

```
ensure dd-vitaristorante
```

**3. Adicione os itens ao ox_inventory**

No arquivo `data/items.lua` do `ox_inventory`, registre os itens abaixo:

```lua
-- Ingredientes base
['potato']            = { label = 'Batata',                  weight = 200,  stack = true },
['frying_oil']        = { label = 'Óleo de Fritura',         weight = 300,  stack = true },
['shrimp']            = { label = 'Camarão',                 weight = 300,  stack = true },
['garlic']            = { label = 'Alho',                    weight = 100,  stack = true },
['lemon']             = { label = 'Limão',                   weight = 100,  stack = true },
['codfish']           = { label = 'Bacalhau',                weight = 500,  stack = true },
['olive_oil']         = { label = 'Azeite de Oliva',         weight = 200,  stack = true },
['crab_meat']         = { label = 'Carne de Siri',           weight = 300,  stack = true },
['burger_bun']        = { label = 'Pão de Hambúrguer',       weight = 150,  stack = true },
['lettuce']           = { label = 'Alface',                  weight = 100,  stack = true },
['tomato']            = { label = 'Tomate',                  weight = 200,  stack = true },
['lobster_meat']      = { label = 'Lagosta',                 weight = 400,  stack = true },
['butter']            = { label = 'Manteiga',                weight = 150,  stack = true },
['goldenfish']        = { label = 'Peixe Dourado',           weight = 400,  stack = true },
['coconut_milk']      = { label = 'Leite de Coco',           weight = 300,  stack = true },
['palm_oil']          = { label = 'Azeite de Dendê',         weight = 300,  stack = true },
['pepper_mix']        = { label = 'Mix de Pimentas',         weight = 100,  stack = true },
['salmao']            = { label = 'Salmão',                  weight = 400,  stack = true },
['herb_mix']          = { label = 'Mix de Ervas',            weight = 100,  stack = true },
['coconut']           = { label = 'Coco',                    weight = 400,  stack = true },
['tequila']           = { label = 'Tequila',                 weight = 400,  stack = true },
['triplsec']          = { label = 'Triple Sec',              weight = 300,  stack = true },
['soda_syrup']        = { label = 'Xarope de Refrigerante',  weight = 200,  stack = true },
['soda_water']        = { label = 'Água Gaseificada',        weight = 300,  stack = true },
['fruit_mix']         = { label = 'Mix de Frutas',           weight = 200,  stack = true },
['water_bottle']      = { label = 'Garrafa de Água',         weight = 300,  stack = true },
['wine']              = { label = 'Vinho',                   weight = 500,  stack = true },
['bottle_glass']      = { label = 'Taça',                    weight = 200,  stack = true },
['icecreamingred']    = { label = 'Base de Sorvete',         weight = 200,  stack = true },
['sugar']             = { label = 'Açúcar',                  weight = 100,  stack = true },
['vanilla_pod']       = { label = 'Fava de Baunilha',        weight = 50,   stack = true },
['passionfruit_pulp'] = { label = 'Polpa de Maracujá',       weight = 200,  stack = true },
['condensed_milk']    = { label = 'Leite Condensado',        weight = 300,  stack = true },
['cream']             = { label = 'Creme de Leite',          weight = 200,  stack = true },
['topping_choice']    = { label = 'Calda',                   weight = 100,  stack = true },

-- Entradas
['french_fries']      = { label = 'Batata Frita',            weight = 200,  stack = false },
['shrimp_platter']    = { label = 'Porção de Camarão',       weight = 300,  stack = false },

-- Pratos principais
['bacalhau_assado']   = { label = 'Bacalhau Assado',         weight = 500,  stack = false },
['siri_burger']       = { label = 'Hambúrguer de Siri',      weight = 400,  stack = false },
['lagosta_grelhada']  = { label = 'Lagosta Grelhada',        weight = 500,  stack = false },
['moqueca_peixe']     = { label = 'Moqueca de Peixe',        weight = 500,  stack = false },
['salmao_grelhado']   = { label = 'Salmão Grelhado',         weight = 400,  stack = false },

-- Bebidas
['agua_coco']         = { label = 'Água de Coco',            weight = 300,  stack = false },
['margarita']         = { label = 'Margarita',               weight = 300,  stack = false },
['ecola']             = { label = 'Refrigerante',            weight = 300,  stack = true  },
['ecolalight']        = { label = 'Refrigerante Zero',       weight = 300,  stack = true  },
['pinejuice']         = { label = 'Suco',                    weight = 300,  stack = false },
['housered']          = { label = 'Vinho do Porto',          weight = 500,  stack = false },

-- Sobremesas
['creme_brulee']      = { label = 'Creme Brûlée',            weight = 200,  stack = false },
['mouse_maracuja']    = { label = 'Mousse de Maracujá',      weight = 200,  stack = false },
['sorvete_taca']      = { label = 'Sorvete',                 weight = 200,  stack = false },
```

**4. Adicione o emprego (job)**

Compatível com **QBCore** e **QBX**. Cole o bloco abaixo no arquivo de jobs do seu framework:

- QBCore → `qb-core/shared/jobs.lua`
- QBX → `qbx_core/shared/jobs.lua`

```lua
['vitaristorante'] = {
    label = 'La Vita Ristorante',
    defaultDuty = false,
    offDutyPay = false,
    grades = {
        ['0'] = { name = 'Estagiário',       payment = 50  },
        ['1'] = { name = 'Atendente',         payment = 80  },
        ['2'] = { name = 'Cozinheiro',        payment = 120 },
        ['3'] = { name = 'Chefe de Cozinha',  payment = 180 },
        ['4'] = { name = 'Gerente',           payment = 250, isboss = true },
        ['5'] = { name = 'Dono',              payment = 350, isboss = true },
    },
},
```

---

## Estações de trabalho

| Estação | Função |
|---|---|
| Balcão | Stash público para pedidos |
| Estoque | Stash restrito a funcionários |
| Entradas | Batata frita e porção de camarão |
| Pratos Principais | Bacalhau, siri burger, lagosta, moqueca e salmão |
| Bebidas | Água de coco, margarita, refrigerante, suco e vinho |
| Sobremesas | Creme brûlée, mousse de maracujá e sorvete |
| Ponto de Serviço | Entrar/sair de serviço |

---

## Configuração

Todas as configurações ficam em `config.lua`. Os principais pontos de ajuste são:

- `Config.Job` — nome do job (padrão: `vitaristorante`)
- `Config.Stations` — coordenadas de cada estação
- `Config.Craft` — receitas de cada estação
- `Config.StorageStash` / `Config.CounterStash` — slots e peso dos stashes

---

## Observações

- O blip do mapa está **ativo por padrão** neste script, diferente do dd-pizzathis.
- O script usa `qbx_core` para notificações e gerenciamento de jogadores. Não é compatível com QBCore puro sem adaptação.

---

## Suporte

Encontrou algum problema? Abra uma issue no repositório ou entre em contato com o desenvolvedor.
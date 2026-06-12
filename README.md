# Vitrine Virtual — Feira do Largo da Ordem

Aplicativo iOS nativo em **SwiftUI** que simula uma vitrine virtual de produtos
artesanais da tradicional Feira do Largo da Ordem (Curitiba), com **foco em
acessibilidade (A11y)**.

> Projeto prático da disciplina de Desenvolvimento iOS — PUCPR.

## Funcionalidades

- 🛍️ Vitrine de produtos em **grade adaptativa** (`LazyVGrid` + `GridItem(.adaptive)`)
  que se ajusta automaticamente a iPhone e iPad.
- ❤️ **Favoritar** produtos com atualização imediata da interface (estado reativo).
- 🔎 **Busca** nativa (`.searchable`) por nome ou categoria.
- 📄 Tela de **detalhes** com navegação (`NavigationStack` / `NavigationLink`).
- ♿ **Acessibilidade**: rótulos descritivos para VoiceOver, leitura correta de
  preços, área de toque mínima de 44×44 pt e suporte a Dynamic Type.

## Arquitetura

O projeto segue o padrão **MVVM (Model–View–ViewModel)**:

```
VitrineFeiraLagoOrdem/
├── Models/
│   └── ProdutoArtesanal.swift      # Model (struct Identifiable)
├── Data/
│   └── ProdutosMock.swift          # Fonte de dados de exemplo (DataSource)
├── ViewModels/
│   └── VitrineViewModel.swift      # Lógica: lista, busca e favoritos (@Observable)
├── Views/
│   ├── VitrineView.swift           # Tela principal (grade + busca)
│   ├── ProdutoCardView.swift       # Card reutilizável
│   └── DetalhesProdutoView.swift   # Tela de detalhes
└── VitrineFeiraLagoOrdemApp.swift  # Ponto de entrada (@main)
```

## Como executar

1. Clone o repositório:
   ```bash
   git clone https://github.com/Bru67/VitrineFeiraLagoOrdem.git
   ```
2. Abra `VitrineFeiraLagoOrdem.xcodeproj` no **Xcode 16+** (desenvolvido no Xcode 26).
3. Selecione um simulador (ex: iPhone 15 / iPhone 16).
4. Pressione **Cmd + R** para rodar.

## Testando a acessibilidade

- **VoiceOver:** Simulador → *Features → Accessibility → VoiceOver*, ou
  *Settings → Accessibility → VoiceOver* no dispositivo.
- **Dynamic Type:** *Settings → Accessibility → Display & Text Size → Larger Text*.
- **Accessibility Inspector:** Xcode → *Open Developer Tool → Accessibility Inspector*.

## Tecnologias

- Swift 5 / SwiftUI
- iOS 16+ (mínimo) — projeto desenvolvido em Xcode 26 / iOS 26
- Observation framework (`@Observable`)

## Equipe

- _(Integrante 1)_
- _(Integrante 2)_
- _(Integrante 3)_
- _(Integrante 4)_
- _(Integrante 5)_

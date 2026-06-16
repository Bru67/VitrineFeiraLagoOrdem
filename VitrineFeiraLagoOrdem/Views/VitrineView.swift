//
//  VitrineView.swift
//  VitrineFeiraLagoOrdem
//
//  Tela principal: grade adaptativa de produtos com busca.
//

import SwiftUI

struct VitrineView: View {
    @State private var viewModel = VitrineViewModel()

    var body: some View {
        TabView {
            // Aba 1 — vitrine existente
            vitrineTab
                .tabItem {
                    Label("Vitrine", systemImage: "storefront")
                }

            // Aba 2 — favoritos
            FavoritosView(viewModel: viewModel)
                .tabItem {
                    Label("Favoritos", systemImage: "heart.fill")
                }
        }
    }

    private var vitrineTab: some View {
        @Bindable var viewModel = viewModel

        return NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150), spacing: 16)], spacing: 16) {
                    ForEach(viewModel.produtosFiltrados) { produto in
                        NavigationLink {
                            DetalhesProdutoView(produto: produto, viewModel: viewModel)
                        } label: {
                            ProdutoCardView(
                                produto: produto,
                                isFavorito: viewModel.isFavorito(produto),
                                aoFavoritar: { viewModel.alternarFavorito(produto) }
                            )
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding()
            }
            .navigationTitle("Feira do Largo da Ordem")
            .searchable(text: $viewModel.textoBusca, prompt: "Buscar por nome ou categoria")
            .overlay {
                if viewModel.produtosFiltrados.isEmpty {
                    ContentUnavailableView.search(text: viewModel.textoBusca)
                }
            }
        }
    }
}

#Preview {
    VitrineView()
}

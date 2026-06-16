import SwiftUI

struct FavoritosView: View {
    let viewModel: VitrineViewModel

    private let colunas = [GridItem(.adaptive(minimum: 150), spacing: 16)]

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: colunas, spacing: 16) {
                    ForEach(viewModel.produtosFavoritos) { produto in
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
            .navigationTitle("Favoritos")
            .overlay {
                if viewModel.produtosFavoritos.isEmpty {
                    ContentUnavailableView(
                        "Nenhum favorito",
                        systemImage: "heart.slash",
                        description: Text("Adicione produtos tocando no coração.")
                    )
                }
            }
        }
    }
}
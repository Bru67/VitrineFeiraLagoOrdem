//
//  VitrineViewModel.swift
//  VitrineFeiraLagoOrdem
//
//  Camada de lógica (MVVM): lista, busca e favoritos.
//

import Foundation

@Observable
final class VitrineViewModel {
    var produtos: [ProdutoArtesanal]
    var produtosFavoritos: [ProdutoArtesanal] {
    produtos.filter { $0.isFavorito }
}
    var textoBusca: String = ""

    init(produtos: [ProdutoArtesanal] = ProdutoArtesanal.exemplos) {
        self.produtos = produtos
    }

    /// Produtos filtrados pelo texto de busca (por nome OU categoria).
    var produtosFiltrados: [ProdutoArtesanal] {
        let termo = textoBusca.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !termo.isEmpty else { return produtos }
        return produtos.filter { produto in
            produto.nome.localizedCaseInsensitiveContains(termo) ||
            produto.categoria.localizedCaseInsensitiveContains(termo)
        }
    }

    /// Alterna o estado de favorito de um produto e atualiza a interface.
    func alternarFavorito(_ produto: ProdutoArtesanal) {
        guard let indice = produtos.firstIndex(where: { $0.id == produto.id }) else { return }
        produtos[indice].isFavorito.toggle()
    }

    /// Retorna se o produto está favoritado (fonte única de verdade).
    func isFavorito(_ produto: ProdutoArtesanal) -> Bool {
        produtos.first(where: { $0.id == produto.id })?.isFavorito ?? false
    }
}

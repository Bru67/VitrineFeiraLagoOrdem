//
//  ProdutosMock.swift
//  VitrineFeiraLagoOrdem
//
//  Dados de exemplo (mock) dos produtos da feira.
//

import Foundation

extension ProdutoArtesanal {
    /// Lista de produtos de exemplo da Feira do Largo da Ordem.
    /// `imagemNome` usa SF Symbols por padrão; se você adicionar uma
    /// imagem com o mesmo nome em Assets.xcassets, ela é usada no lugar.
    static let exemplos: [ProdutoArtesanal] = [
        ProdutoArtesanal(
            nome: "Escultura de Capivara",
            artesao: "João Pereira",
            preco: 89.90,
            categoria: "Madeira",
            imagemNome: "Images/capivara", 
            descricao: "Peça entalhada à mão em madeira de reflorestamento, "
                + "representando a fauna típica do Paraná. Acabamento em cera natural.",
            imagemAcessivel: "Escultura de madeira em formato de capivara"
        ),
        ProdutoArtesanal(
            nome: "Tábua de Carne Entalhada",
            artesao: "Marcos Lima",
            preco: 120.00,
            categoria: "Madeira",
            imagemNome: "Images/tabua-esculpida",
            descricao: "Tábua de servir feita em madeira maciça de imbuia, "
                + "com entalhes decorativos nas bordas e tratamento alimentício.",
            imagemAcessivel: "Tábua de madeira para servir carnes, com entalhes nas bordas"
        ),
        ProdutoArtesanal(
            nome: "Poncho de Lã Colorido",
            artesao: "Ana Beatriz",
            preco: 159.90,
            categoria: "Vestuário",
            imagemNome: "Images/poncho-colorido",
            descricao: "Poncho tecido manualmente em tear, com lã 100% natural "
                + "tingida com pigmentos vegetais. Peça única.",
            imagemAcessivel: "Poncho de lã com listras coloridas"
        ),
        ProdutoArtesanal(
            nome: "Quadro do Largo da Ordem",
            artesao: "Cláudia Reis",
            preco: 240.00,
            categoria: "Arte",
            imagemNome: "Images/quadro",
            descricao: "Pintura em tela retratando o casario histórico do Largo "
                + "da Ordem em Curitiba, feita em tinta acrílica.",
            imagemAcessivel: "Quadro com pintura do casario histórico do Largo da Ordem"
        ),
        ProdutoArtesanal(
            nome: "Mandala de Crochê",
            artesao: "Dona Teresa",
            preco: 65.00,
            categoria: "Decoração",
            imagemNome: "Images/mandala-de-croche",
            descricao: "Mandala decorativa de parede feita em crochê com linha de "
                + "algodão, em tons de terracota e bege.",
            imagemAcessivel: "Mandala de crochê em tons de terracota"
        ),
        ProdutoArtesanal(
            nome: "Pão de Mel Artesanal",
            artesao: "Confeitaria da Vó",
            preco: 12.50,
            categoria: "Comida",
            imagemNome: "Images/pao-de-mel",
            descricao: "Pão de mel recheado com doce de leite e coberto com "
                + "chocolate meio amargo. Receita de família.",
            imagemAcessivel: "Pão de mel coberto com chocolate"
        ),
        ProdutoArtesanal(
            nome: "Café Coado na Hora",
            artesao: "Sítio Boa Vista",
            preco: 8.00,
            categoria: "Comida",
            imagemNome: "Images/cafe-coado",
            descricao: "Café especial cultivado no interior do Paraná, torrado "
                + "artesanalmente e coado na hora.",
            imagemAcessivel: "Xícara de café coado fumegante"
        ),
        ProdutoArtesanal(
            nome: "Rádio Antigo Anos 50",
            artesao: "Antiguidades do Seu Zé",
            preco: 380.00,
            categoria: "Antiguidade",
            imagemNome: "Images/radio-antigo",
            descricao: "Rádio valvulado original da década de 1950, restaurado e "
                + "funcionando. Item de colecionador.",
            imagemAcessivel: "Rádio antigo de madeira da década de 1950"
        ),
        ProdutoArtesanal(
            nome: "Violão Artesanal",
            artesao: "Luthier Ricardo",
            preco: 950.00,
            categoria: "Arte",
            imagemNome: "Images/violao-artesanal",
            descricao: "Violão construído à mão com tampo de cedro e laterais de "
                + "jacarandá, com afinação e acabamento profissional.",
            imagemAcessivel: "Violão de madeira feito à mão por luthier"
        ),
        ProdutoArtesanal(
            nome: "Boneca de Pano",
            artesao: "Ateliê Retalhos",
            preco: 45.00,
            categoria: "Decoração",
            imagemNome: "Images/bonecas-de-pano",
            descricao: "Boneca artesanal costurada à mão com tecidos reaproveitados "
                + "e enchimento antialérgico. Ideal para presente.",
            imagemAcessivel: "Boneca de pano costurada à mão com vestido florido"
        )
    ]
}

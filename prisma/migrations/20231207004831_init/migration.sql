-- CreateTable
CREATE TABLE "Usuario" (
    "id" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "idade" INTEGER NOT NULL,
    "email" TEXT NOT NULL,
    "senha" TEXT NOT NULL,
    "gitHub" TEXT,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Usuario_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Produto" (
    "id" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,
    "valor" INTEGER NOT NULL,
    "quantidade_estoque" INTEGER NOT NULL,
    "data" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "disponivel" BOOLEAN NOT NULL,

    CONSTRAINT "Produto_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Loja" (
    "id" TEXT NOT NULL,
    "cnpj" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "segmento" TEXT DEFAULT 'Alimentação',
    "telefone" INTEGER,
    "quantidade_de_filiais" INTEGER NOT NULL,
    "data_criacao" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Loja_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Fornecedor" (
    "id" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "avaliacao" INTEGER NOT NULL,
    "data_criacao" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "data_atualizacao" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Fornecedor_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Usuario_id_key" ON "Usuario"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Usuario_email_key" ON "Usuario"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Produto_id_key" ON "Produto"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Loja_id_key" ON "Loja"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Loja_cnpj_key" ON "Loja"("cnpj");

-- CreateIndex
CREATE UNIQUE INDEX "Fornecedor_id_key" ON "Fornecedor"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Fornecedor_email_key" ON "Fornecedor"("email");

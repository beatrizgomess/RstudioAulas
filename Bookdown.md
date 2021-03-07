# Como fazer um livro em Markdown utilizando Bookdown
#### autores: "Mateus Ferraz, Beatriz Gomes e Bruno Monteiro,"
###### date: "04/03/2021"

![3462ec0849920e1fb0e5fac7c86fac9c.png](:/b3929383888e445baf6a1654a3cc6aaf)

###### Este documento retrata o passo a passo para a elaboração de um livro através de manipulação de dados.


## Instalando o Bookdown

A maneira mais fácil para iniciantes começarem a escrever um livro em R é utilizando o pacote bookdown. 

Para instalá-lo, basta inserir o código abaixo no console:

```{include=FALSE}
install.packages("bookdown")
```

## Descrição

O pacote **Bookdown** é um pacote R de código aberto que facilita a escrita de livros e artigos / relatórios longos com o R Markdown. Com ele, temos inúmeras possibilidades, dentre elas:

- Gerar livros e e-books prontos para impressão a partir de documentos R Markdown;
- Uma linguagem de marcação mais fácil de aprender do que LaTeX e de escrever elementos como cabeçalhos de seção, listas, citações, figuras, tabelas e citações;
- Múltiplas opções de formatos de saída: PDF, LaTeX, HTML, EPUB e Word, além da possibilidade de inclusão de gráficos.


## Componentes básicos do livro

Cada arquivo R Markdown deve começar imediatamente com o título do capítulo usando o título de primeiro nível, por exemplo:


###### Prefácio.Rmd

```{include=FALSE}
# Prefácio

"Neste livro, vamos introduzir um método interessante."

```


###### Método.Rmd

```{include=FALSE}
# Método:

"Nós descrevemos nossos métodos nesse capítulo."
```


###### Aplicação.Rmd

```{include=FALSE}
# Aplicações:

"Algumas aplicações interessantes são demonstradas nesse capítulo."

## Example one

## Example two
```


###### Sumário.Rmd

```{include=FALSE}
# Palavras finais

Nós terminamos um ótimo livro.
```


## Extensões do pacote

No momento, os principais formatos de saída que você pode usar incluem:
bookdown::pdf_book; bookdown::gitbook; bookdown::html_book; e bookdown::epub_book.

Existe uma bookdown::render_book()função semelhante a rmarkdown::render(), mas foi projetada para renderizar vários documentos Rmd em um livro usando as funções de formato de saída.


```{include=FALSE}
bookdown::render_book("foo.Rmd", "bookdown::gitbook")
bookdown::render_book("foo.Rmd", "bookdown::pdf_book")
bookdown::render_book("foo.Rmd", bookdown::gitbook(lib_dir = "libs"))
bookdown::render_book("foo.Rmd", bookdown::pdf_book(keep_tex = TRUE))
```


## Código

Existem dois tipos de código R em documentos de R Markdown: pedaços de código R e código R in line. A sintaxe para este último é , e pode ser incorporada em linha com outros elementos de documento. Os pedaços de código R parecem blocos de código simples, mas têm depois dos três backticks e (opcionalmente) opções de pedaços dentro, por exemplo:

```{include=FALSE}
{r chunk-label, echo = FALSE, fig.cap = 'A figure caption.'}
1 + 1
rnorm(10)  # 10 random numbers
plot(dist ~ speed, cars)  # a scatterplot
```


Ao rodá-lo:

```{r chunk-label, echo = FALSE, fig.cap = 'A figure caption.'}
1 + 1
rnorm(10)  # 10 random numbers
plot(dist ~ speed, cars)  # a scatterplot
```


## Construindo o Livro

Após definir todo o conteúdo do seu livro, para incluir todos os arquivos Rmd utiliza-se a função render_book(), uma função dentro do pacote bookdown

```{include=FALSE}
render_book(input = ".", output_format = NULL, ..., clean = TRUE, 
  envir = parent.frame(), clean_envir = !interactive(), 
  output_dir = NULL, new_session = NA, preview = FALSE, 
  config_file = "_bookdown.yml")
```

Se você planeja gerar vários formatos de saída para um livro, recomenda-se que voce especifique todos os formatos em output_format'bookdown::gitbook'_output.yml_output.yml

Uma vez especificados todos os formatos, é fácil escrever um script R ou Shell ou Makefile para compilar o livro. Abaixo está um exemplo simples de usar um script Shell para compilar um livro para HTML (com o estilo GitBook) e PDF: _output.yml

```{include=FALSE}
#!/usr/bin/env Rscript

bookdown::render_book("index.Rmd", "bookdown::gitbook")
bookdown::render_book("index.Rmd", "bookdown::pdf_book")
```


Vários arquivos de saída serão gerados por render_book(). Às vezes, você pode querer limpar o diretório do livro e começar tudo de novo, por exemplo, remover a figura e os arquivos de cache que foram gerados automaticamente a partir do knitr . A função clean_book()foi projetada para esse fim. Por padrão, ele informa quais arquivos de saída você pode excluir ou você pode excluir todos eles usando 

```{include=FALSE}
bookdown::clean_book(TRUE).
```

## Conclusão

Acima apresentamos um simples passo a passo de como fazer um livro em R por meio do **Markdown**, utilizando o pacote **Bookdown** e algumas das suas principais funções.
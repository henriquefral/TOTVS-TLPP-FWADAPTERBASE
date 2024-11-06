# Um estudo básico e simples sobre a linguagem TLPP, da TOTVS. #

Informações reunidas com base no [link oficial da Totvs](https://tdn.totvs.com/display/tec/TLPP)

## O que é o TLPP? ##

É a evolução natural do ADVPL, vem com a proposta de auxiliar os desenvolvedores em ADVPL com novas funções. Traz recursos como: 

- namespaces;
- Nomes longos, de 255 caracteres:
  - Variáveis;
  - Funções;
  - Classes;
  - Propriedades;
  - Métodos.
- Reflections/Annotations;
- Tipagem;
- Parâmetros nomeados;
- Try...Catch;
- POO (Programação Orientada a Objetos);
- Uma nova extensão, a ".tlpp";
- Entre outros!

Para seguir a ordem natural das coisas, o filho caçula sempre é o mais mimado... Sendo assim, os arquivos em _".tlpp"_ irão receber mais novidades do que o irmão já crescido advpl e sua extensão _".prw"_.
Mas como é uma grande família, não é só porque um nasceu que o mais velho será morto! (Pelo menos não no século 21). ADVPL e TLPP viverão na mesma casa, apesar do TLPP ser bem mais atrativo. E digo mais! Os dois irmãos conversam entre si! Para o irmão mais velho entrar em contato com o mais novo, é preciso usar a função [tlpp.call](https://tdn.totvs.com/pages/viewpage.action?pageId=777264302), sendo possível chamar uma função e seus respectivos parâmetros.

> Mas para aqueles que já lidam com o irmão mais velho, como lidaremos com o mais novo? Mesmo o rosto sendo outro, o DNA tem origem igual, ou seja, tem sintaxes muito semelhantes, mas assim como os pais se adaptam à nova geração dos jovens, é preciso se adaptar as novas funcionalidades do TLPP. Adaptação essa, de linguagens de mercado. Então, nada de se apegar ao passado! O ADVPL já está crescido e sabe se virar, volte-se um pouco mais ao TLPP!


## Tá legal, já entendi. Então esse tal TLPP não é um bixo de sete cabeças. E como eu uso? ##

Para utilizar todas as funcionalidades do tlpp, é preciso utilizar um include que já vai estar dentro dos includes da linguagem ADVPL/TLPP em suas últimas versões: _'tlpp-core.th'_.

```
#INCLUDE 'TLPP-CORE.TH' 
```
E por último e não menos importante, usar a extensão _".tlpp"_ no arquivo.




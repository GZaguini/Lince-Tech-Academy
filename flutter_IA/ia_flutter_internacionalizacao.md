# IA Flutter - Internacionalização

## O que é internacionalização e qual sua importância?

Internacionalização (Internationalization ou I18N) é o processo de preparar um aplicativo para suportar diferentes idiomas e 
regiões sem precisar alterar seu código-fonte. Com ela, o mesmo aplicativo pode ser utilizado por pessoas de diferentes países, 
exibindo textos, datas, moedas e outras informações de acordo com o idioma do usuário.

Sua importância está em tornar o aplicativo acessível para um número maior de pessoas, melhorando a experiência do usuário e 
facilitando sua distribuição em diferentes mercados.

---

## Como funciona a internacionalização no Flutter?

No Flutter, a internacionalização funciona utilizando o pacote `intl` juntamente com arquivos de tradução chamados **ARB**.

Cada idioma possui um arquivo contendo as traduções dos textos do aplicativo. Durante a execução, o Flutter identifica o idioma 
configurado no dispositivo e carrega automaticamente o arquivo correspondente.

Caso o idioma não exista, normalmente é utilizado o idioma padrão definido pelo desenvolvedor.


---

## Quais as dicas de uso dos arquivos ARB?

Algumas boas práticas para utilizar arquivos ARB são:

- Utilizar nomes claros para as chaves.
- Evitar repetir textos iguais.
- Organizar as mensagens por categoria.
- Adicionar descrições quando necessário.
- Manter todos os idiomas atualizados.

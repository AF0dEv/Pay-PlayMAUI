Conteúdo
Título e Objetivo	1
Autor, Data, Contexto de Trabalho	1
Descrição do problema	1
Ferramentas e versões	1
Análise de dados	1
Descrição de processos	2
Dicionário	3
String connection, instâncias, bases de dados	3
Lista de tabelas, campos e tipos	3
Namespaces	3
Classes e métodos	3
PayAndPlay WEB API	3
Classe ApplicationDbContext	5
Outras informações	5


Título e Objetivo
Pay & Play: Escolha, Pague, Curta com Nosso DJ.
Permitir Utilizadores Escolher a sua Música Favorita no seu Ambiente Favorito.

Autor, Data, Contexto de Trabalho
Afonso Figueiredo, abril, UFCD 26.

Descrição do problema
Uma aplicação que permita a utilizadores fazer pedidos de músicas a Djs através de QrCode pagando por esse pedido, permitindo assim que os utilizadores possam disfrutar da sua música favorita. A aplicação deverá ter utilizadores do tipo Dj e utilizadores normais, os utilizadores do tipo Dj, teriam acesso a criar as suas playlists a partir de uma base de dados de músicas publica para todos os Djs, sendo-lhes possível também adicionar músicas a essa base, um QRCode que será usado pelos utilizadores normais acederem à sua playlist e escolherem a música que querem ouvir, esse QRCode pode ser gerado no início da noite (turno) e desativado quando o Dj terminar o seu tempo. Terá acesso também ao seu perfil onde terá acesso a todos os pedidos concluídos e pendentes e também ao total de dinheiro ganho nessa noite. Do lado do utilizador terá acesso a um mecanismo para ler o QRCode daquele Dj e será encaminhado para as suas playlists onde poderá escolher a música que quer ouvir, escolhendo a música que quer ouvir é redirecionado para o pagamento do pedido onde ficara pendente dependendo da aceitação do pedido e consequente passagem da música por parte do Dj, sendo confirmado a passagem da música por parte do Dj e do utilizador, o pagamento é concluído.

Ferramentas e versões
-	.NET 8.0
-	ASP .NET CORE WEB API
-	MAUI APP
-	SQL Server Managment Studio 19
-	Linq

Análise de dados

 
Descrição de processos
1.	Processos Relativos a Dj:
	CRUD playlists;
	Inserção novas músicas;
	Gerar/Desativar QrCode; 
	Gerir Perfil;
	Gerir Pedidos;
	Levantar Dinheiro Ganho;

 
2.	Processos Relativos a Utilizador Comum:
	Gerir Perfil;
	Ler QrCode;
	Escolher Música;
	Efetuar Pagamento;
	Gerir Pedidos;


3.	Outros Processos:
	Mecanismo de Registo e Login;
	Cálculo de Saldo Ganho de Dj;
(Listagens DJ)
	Listagem Ganhos por mês;
	Listagem Ganhos por período específico;
	Listagem Músicas mais/menos pedidas;
	Listagem de Utilizadores com mais/menos pedidos.
	Listagem de Utilizadores com mais/menos dinheiro gasto.
(Listagens Utilizador Comum)
	Listagem Gastos por mês;
	Listagem Gastos por período específico;
	Listagem Gastos por Dj;


Dicionário
String connection, instâncias, bases de dados
String Connection: 
“Data Source = 62.28.39.135,62444;
Initial Catalog = PayAndPlay_Afonso;
User ID = EFAafonso;
Password=Abc.123##;
Trust Server Certificate = True”
Instância:
Ip: 62.28.39.135
Porto: 62444
Base de dados: PayAndPlay_Afonso

 
Lista de tabelas, campos e tipos

Referenciado no Diagrama de Entidade-Relação acima.

Namespaces

PayAndPlay

Classes e métodos


PayAndPlay WEB API

DJ
getDJ(int id): Método acionado para retornar um Dj da base de acordo com o Id
getDJs(): Método acionado para retornar todos os DJs da base de dados
updateDJ(DJ dj): Método acionado quando os dados de edição de DJ são submetidos via HTTP POST. Atualiza as informações do DJ na base de dados. 
addDJ(DJ dj): Método acionado quando os dados do novo DJ são submetidos via HTTP POST. Adiciona um novo DJ à base de dados. 
deleteDJ(int id): Método acionado quando a exclusão de DJ é pedida. Remove o DJ da base de dados. 

Música
getMusica(int id): Método acionado para retornar uma Musica da base de acordo com o Id
getMusicas(): Método acionado para retornar todas as Musicas da base de dados
updateMusica(Musica musica): Método acionado quando os dados de edição de Musica são submetidos via HTTP POST. Atualiza as informações da Musica na base de dados.
addMusica(Musica musica): Método acionado quando os dados da nova Musica são submetidos via HTTP POST. Adiciona uma nova Musica à base de dados. 
deleteMusica(int id): Método acionado quando a exclusão da Musica é pedida. Remove a Musica base de dados. 

MusicaInPlayList
getMusicaInPlayList(int id): Método acionado para retornar uma MusicaInPlayList da base de acordo com o Id
getMusicasInPlayList(): Método acionado para retornar todas as MusicasInPlayLists da base de dados
updateMusicaInPlayList(MusicaInPlayList musicainplaylist): Método acionado quando os dados de edição de MusicaInPlayList são submetidos via HTTP POST. Atualiza as informações da MusicaInPlayList na base de dados
addMusicaInPlayList(MusicaInPlayList musicainplaylist): Método acionado quando os dados da nova MusicaInPlayList são submetidos via HTTP POST. Adiciona uma nova MusicaInPlayList à base de dados. 
deleteMusicaInPlayList(int id): Método acionado quando a exclusão da MusicaInPlayList é pedida. Remove a MusicaInPlayList base de dados. 

Pedido
getPedido(int id): Método acionado para retornar um Pedido da base de acordo com o Id
getPedidos(): Método acionado para retornar todos os Pedido da base de dados
getPedidosForDJ(int id): Método acionado para retornar os Pedidos da base de acordo com o Id do Dj
getPedidosByUtilizador(int id): Método acionado para retornar os Pedido da base de acordo com o Id do Utilizador
updatePedido(Pedido pedido): Método acionado quando os dados de edição de Pedido são submetidos via HTTP POST. Atualiza as informações do Pedido na base de dados.
addPedido(Pedido pedido): Método acionado quando os dados do novo Pedido são submetidos via HTTP POST. Adiciona um novo Pedido à base de dados. 
deletePedido(int id): Método acionado quando a exclusão do Pedido é pedida. Remove o Pedido base de dados. 

Perfil
getPerfil(int id): Método acionado para retornar um Perfil da base de acordo com o Id
getPerfis(): Método acionado para retornar todos os Perfis da base de dados
updatePerfil(Perfil perfil): Método acionado quando os dados de edição de Perfil são submetidos via HTTP POST. Atualiza as informações do Perfil na base de dados.
addPerfil(Perfil perfil): ): Método acionado quando os dados do novo Perfil são submetidos via HTTP POST. Adiciona um novo Perfil à base de dados
deletePerfil(int id): Método acionado quando a exclusão do Perfil é pedida. Remove o Perfil base de dados. 

PlayList
getPlayList(int id): Método acionado para retornar uma PlayList da base de acordo com o Id
getDjPlayLists(int id): Método acionado para retornar as PlayLists da base de acordo com o Id do DJ
getPlayLists(): Método acionado para retornar todos as PlayLists da base de dados
updatePlayList(PlayList playlist): Método acionado quando os dados de edição da PlayList são submetidos via HTTP POST. Atualiza as informações da PlayList na base de dados.
addPlayList(PlayList playlist): Método acionado quando os dados da nova PlayList são submetidos via HTTP POST. Adiciona uma nova PlayList à base de dados
deletePlayList(int id): Método acionado quando a exclusão da PlayList é pedida. Remove a PlayList da  base de dados

Utilizador
getUtilizador(int id): Método acionado para retornar um Utilizador da base de acordo com o Id
getUtilizadores(): Método acionado para retornar os Utilizadores da base de dados
updateUtilizador(Utilizador utilizador): Método acionado quando os dados de edição de Utilizador são submetidos via HTTP POST. Atualiza as informações do Utilizador na base de dados.
addUtilizador(Utilizador utilizador): Método acionado quando os dados do novo Utilizador são submetidos via HTTP POST. Adiciona um novo Utilizador à base de dados
deleteUtilizador(int id): Método acionado quando a exclusão do Utilizador é pedida. Remove o Perfil base de dados. 


Listagens
DJ

CalculoSaldoDJ(int id): ): Este método retorna o Saldo Total do Dj.
ListarGanhosMes(int data, int id): Este método retorna um decimal com o valor ganho no mês com base no ID fornecido e o mês especifico.
ListarGanhosPeriodo(int dataInicio, int dataFinal, int id): Este método retorna um decimal com o valor ganho no período de tempo com base no ID fornecido e o período especifico.
ListarMusicasMenosPedidas(int id): Este método retorna a musica menos pedida a um Dj especifico
ListarMusicasMaisPedidas(int id): Este método retorna a musica mais pedida a um Dj especifico
ListarUtilizadorMenosPedidos(int id): Este método retorna o utilizador com menos pedidos a um Dj especifico.
ListarUtilizadorMaisPedidos(int id): Este método retorna o utilizador com mais pedidos a um Dj especifico.
ListarUtilizadorMenosGastos(int id): Este método retorna o utilizador com menos gastos num Dj especifico.
ListarUtilizadorMaisGastos(int id): Este método retorna o utilizador com mais gastos num Dj especifico.

Utilizador

ListarGastosMesPorDj(int data, int id): ): Este método retorna o valor decimal dos gastos num mês especifico com base no ID fornecido e mês.
ListarGastosPeriodo(int dataInicio, int dataFinal, int id): Este método retorna o valor decimal dos gastos num período de tempo especifico com base no ID fornecido e o período de tempo.


Classe ApplicationDbContext
Esta classe representa o contexto da base de dados para a aplicação. Aqui estão os pontos principais: 
Construtores: Esta classe possui dois construtores, um sem parâmetros e outro que recebe opções de configuração do contexto. O segundo construtor é utilizado para configurar as opções de acesso à base de dados. 
Propriedades DbSet: Define propriedades virtuais para cada entidade do modelo de dados: Utilizador; Dj; PlayList; Musica; MusicaInPlayList; Pedido. Cada uma destas propriedades representa uma tabela na base de dados. 
OnConfiguring: Subescreve o método OnConfiguring para configurar o provedor de base de dados. Neste caso, está a ser utilizado o provedor SQL Server com uma string de conexão especificada. 
OnModelCreating: Sobrescreve o método OnModelCreating para configurar o modelo de dados através de Fluent API. Aqui são definidas as configurações de tabela, restrições e relações entre as entidades. 
Configuração das Entidades: Utiliza o método Entity() para configurar cada entidade individualmente. Define o nome das tabelas, as propriedades e respetivos tipos de dados, índices e relações de chave estrangeira. 

Esta classe é essencial para a interação com a base de dados e define a estrutura e comportamento das entidades no contexto da aplicação de PayAndPlay. 

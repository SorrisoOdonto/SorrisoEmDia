<%@page import="java.sql.Connection"%>
<%@page import="sorrisoemdia.controle.AcessaDB"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Sorriso em Dia - Clinica Odontológica</title>
    <meta name="twitter:description" content="NÃ³s contamos com diversos tratamentos, todos realizados por profissionais totalmente qualificados para o trabalho. A clinica Ã© localizada em SÃ£o Paulo - SP.">
    <meta property="og:title" content="Sorriso em Dia - Clinica OdontolÃ³gica">
    <meta property="og:type" content="website">
    <meta name="description" content="NÃ³s contamos com diversos tratamentos, todos realizados por profissionais totalmente qualificados para o trabalho. A clinica Ã© localizada em SÃ£o Paulo - SP.">
    <meta property="og:description" content="NÃ³s contamos com diversos tratamentos, todos realizados por profissionais totalmente qualificados para o trabalho. A clinica Ã© localizada em SÃ£o Paulo - SP.">
    <meta name="twitter:title" content="Sorriso em Dia - Clinica OdontolÃ³gica">
    <link rel="icon" type="image/png" sizes="16x16" href="../assets/img/favicon/favicon-16x16.png">
    <link rel="icon" type="image/png" sizes="32x32" href="../assets/img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="180x180" href="../assets/img/favicon/apple-touch-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="../assets/img/favicon/android-chrome-192x192.png">
    <link rel="icon" type="image/png" sizes="512x512" href="../assets/img/favicon/android-chrome-512x512.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="../assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css">
    <link rel="stylesheet" href="../assets/css/swiper.min.css">
    <link rel="stylesheet" href="../assets/css/styles.min.css">
    <link rel="stylesheet" href="../assets/css/remaster.css">
    <link rel="stylesheet" href="../assets/css/loginform.css">
    <link rel="stylesheet" href="../painel/assets/css/styles.min.css" type="text/css"/>
</head>

<body>
    <div id="navbar-section" class="fixed-top">
        <nav class="navbar navbar-light navbar-expand-lg navigation-clean">
            <div class="container"><a href="index.html"><img id="logo" src="../assets/img/logo/logo.png" alt="Sorriso em Dia"></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse"
                    id="navcol-1">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item" role="presentation"><a class="nav-link" href="../index.html#a-clinica">A Clínica</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="../index.html#nossa-equipe">Nossa Equipe</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="../index.html#tratamentos">Tratamentos</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="../index.html#localizacao">Localização</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="" id="entrar">Entrar</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    
    <%
        AcessaDB con = new AcessaDB();
       
        Connection conecta = con.conectaMySql("sorrisoemdia4");
        
        if(conecta != null) {
            out.println("Conexão com o banco de dados estabelecida com suceso.");
        } else {
            out.println("Erro ao conectar com o banco, verifique os dados no AcessaDB. Caso tudo esteja certo, "
                    + "verifique a váriavel conecta que está nesse código (Ela deve estar com o nome do banco).");
        }
    %>

    <div class="container">
      <div class="conteudo">
      <ul class="tab-group">
        <li class="tab active"><a href="#login">Login</a></li>
        <li class="tab"><a href="#signup">Cadastro</a></li>
      </ul>

      <div class="form">
        <div class="tab-content">
          <div id="login">   
            <h3>Iniciar sessão</h3>
            
            <form action="" method="get">
            
             <div class="field-wrap">
              <label>
                CPF:<span class="req">*</span>
              </label>
              <input type="text" id="cpf-login" name="cpf-login" maxlength="11" class="border rounded" placeholder="Digite seu CPF aqui" required autocomplete="off" autofocus/>
             </div>
            
            <div class="field-wrap">
              <label>
                Senha:<span class="req">*</span>
              </label>
              <input type="password" name="senha-login" id="senha-login" maxlength="30" class="border rounded" placeholder="Digite sua senha aqui" required autocomplete="off"/>
            </div>
            
            <p class="forgot"><a href="../recuperar-senha/index.html">Esqueceu sua senha?</a></p>
            
            <button class="button button-block" id="btnLogar">Entrar</button>
            
            </form>
  
          </div>

          <div id="signup">   
            <h3>Criar conta</h3>
            
            <form action="index.html" method="post">
            
            <div class="top-row">
              <div class="field-wrap">
                <label>
                  Nome:<span class="req">*</span>
                </label>
                <input type="text" name="nome" id="nome" maxlength="30" class="border rounded" placeholder="Digite seu nome aqui"  required autocomplete="off" />
              </div>
          
              <div class="field-wrap">
                <label>
                  Sobrenome:<span class="req">*</span>
                </label>
                <input type="text" name="sobrenome" id="sobrenome" maxlength="200" class="border rounded" placeholder="Digite seu sobrenome aqui" required autocomplete="off"/>
              </div>
            </div>

            <div class="top-row">
              <div class="field-wrap">
                <label>
                  CPF:<span class="req">*</span>
                </label>
                <input type="text" id="cpf" name="cpf" maxlength="11" class="border rounded" placeholder="Digite seu CPF aqui" required autocomplete="off" />
              </div>
          
              <div class="field-wrap">
                <label>
                  Nascimento:<span class="req">*</span>
                </label>
                <input type="date" name="nascimento" id="nascimento" class="border rounded" required autocomplete="off"/>
              </div>
            </div>

            <div class="field-wrap">
              <label>
                RG:<span class="req">*</span>
              </label>
              <input type="text" name="rg" id="rg" maxlength="9" class="border rounded" placeholder="Digite seu RG aqui" required autocomplete="off"/>
            </div>
  
            <div class="field-wrap">
              <label>
                E-mail:<span class="req">*</span>
              </label>
              <input type="email" name="email-cadastro" id="email-cadastro" class="border rounded" placeholder="Digite seu e-mail aqui" required autocomplete="off"/>
            </div>

            <div class="top-row">
              <div class="field-wrap">
                <label>
                  Senha:<span class="req">*</span>
                </label>
                <input type="password" name="senha-cadastro" id="senha-cadastro" maxlength="30" class="border rounded" placeholder="Digite sua senha aqui" required autocomplete="off"/>
              </div>

              <div class="field-wrap">
                <label>
                  Confirmar senha:<span class="req">*</span>
                </label>
                <input type="password" name="confirmarSenha" id="confirmarSenha" maxlength="30" class="border rounded" placeholder="Digite sua senha novamente" required autocomplete="off"/>
              </div>
            </div>

            <div class="top-row">
              <div class="field-wrap">
                <label>
                  Endereço:<span class="req">*</span>
                </label>
                <input type="text" id="endereco" name="endereco" maxlength="50" class="border rounded" placeholder="Digite seu endereço aqui" required autocomplete="off" />
              </div>
          
              <div class="field-wrap">
                <label>
                  Número:<span class="req">*</span>
                </label>
                <input type="text" name="numero-rua" id="numero-rua" maxlength="4" class="border rounded" placeholder="Digite seu número aqui" required autocomplete="off" />
              </div>
            </div>

            <div class="field-wrap">
              <label>
                CEP:<span class="req">*</span>
              </label>
              <input type="text" name="cep" id="cep" maxlength="8" class="border rounded" placeholder="Digite seu CEP aqui" required autocomplete="off" />
            </div>
            
            <div class="field-wrap">
              <label>
                Telefone:<span class="req">*</span>
              </label>
              <input type="text" name="telefone" id="telefone" maxlength="11" class="border rounded" placeholder="Digite o nÃºmero do seu telefone aqui" required autocomplete="off"/>
            </div>
            
            <button type="submit" class="button button-block">Criar conta</button>
            
            </form>
  
          </div>
        </div>
      </div>
    </div>
    </div>
    
    <div class="footer-dark">
      <footer>
          <div class="container">
              <div class="row">
                  <div class="col-sm-6 col-md-3 item">
                      <h3>Navegação</h3>
                      <ul>
                          <li><a href="../index.html#a-clinica">A Clínica</a></li>
                          <li><a href="../index.html#nossa-equipe">Nossa Equipe</a></li>
                          <li><a href="../index.html#tratamentos">Tratamentos</a></li>
                          <li><a href="../index.html#localizacao">Localização</a></li>
                      </ul>
                  </div>
                  <div class="col-sm-6 col-md-3 item">
                      
                      <ul>
                          <li><a href="">Acessar conta</a></li>
                          <li><a href="../recuperar-senha/index.html">Recuperar senha</a></li>
                      </ul>
                  </div>
                  <div class="col-md-6 item text">
                      <h3>Sorriso em Dia</h3>
                      <p>Estamos abertos das 08h às 20h, de segunda a sexta.<br></p>
                      <p>Rua Bernardo Magalhães, 137 - Tatuapé, São Paulo - SP<br></p>
                      <p>Telefone para contato: (11) 2741-8392 ou clique no balão do WhatsApp<br></p>
                  </div>
              </div>
              <p class="copyright">Sorriso em Dia © 2020, Todos os direitos reservados</p>
          </div>
      </footer>
    </div>
    <script src="../assets/js/jquery.min.js"></script>
    <script>
        jQuery(document).ready(function($) { 
            $(".scroll").click(function(event){        
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top}, 600);
           });
        });
    </script>
    
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
    <script src="../assets/js/script.min.js"></script>
    <script  src="../assets/js/index.js"></script>
</body>

</html>


package Learn;

use strict;
use warnings;

#
# printid
# Imprimir "id: " seguido do ID sem aspas.
# Exemplo:
#   id: 5
#   id: 10
##
sub printid {
    $_ = $_[0];

    ##
    # Escreva as regexes abaixo
    s!padrão!substituição!gm;
    ##

    $_;
}

#
# fixtype
# Retirar aspas onde existir número.
# Exemplo:
#   1,"fulano@exemplo.com","Fulano Silva",100
##
sub fixtype {
    $_ = $_[0];

    ##
    # Escreva as regexes abaixo
    s!padrão!substituição!gm;
    ##

    $_;
}

#
# printage
# Imprimir idade somente se for número. Caso contrário, imprimir null.
# Exemplo:
#   idade: 100
#   idade: null
##
sub printage {
    $_ = $_[0];

    ##
    # Escreva as regexes abaixo
    s!padrão!substituição!gm;
    ##

    $_;
}

#
# printemail
# Imprimir e-mails cujo nome de usuário tenha de 3 a 10 caracteres.
# Coloque um traço para os que estiverem fora do padrão.
# Exemplo:
#   e-mail: fulano@exemplo.com
#   e-mail: -
##
sub printemail {
    $_ = $_[0];

    ##
    # Escreva as regexes abaixo
    s!padrão!substituição!gm;
    ##

    $_;
}

#
# updatepass
# Imprimir uma query para atualizar a senha.
# Use a query abaixo, alterando senha e id:
#   UPDATE db.user SET password = 'Fulano100pA5s1' WHERE id = 1;
#
# O padrão de senha é:
#   Primeiro nome + idade + "pA5s" + id
#
# Coloque 000 caso a idade não seja um número.
##
sub updatepass {
    $_ = $_[0];

    ##
    # Escreva as regexes abaixo
    s!padrão!substituição!gm;
    ##

    $_;
}

#
# sendemail
# Gerar nome de usuário e simular enviá-lo por e-mail.
# Use o comando abaixo, alterando nome e e-mail.
#   echo "Olá, Fulano, seu usuário é: fulano.silva" | mail fulano@exemplo.com
#
# O padrão de nome é:
#   nome.sobrenome
##
sub sendemail {
    $_ = $_[0];

    ##
    # Escreva as regexes abaixo
    s!padrão!substituição!gm;
    ##

    $_;
}

#
# Keep out!
# Do not touch this fuction or everything may get messed out!!!
##
sub loadfile {
    my $file = $_[0];
    open(my $fh, "<", $file);

    my $c;
    while(<$fh>) { $c .= $_; }

    close($fh);

    $c;
}

1;


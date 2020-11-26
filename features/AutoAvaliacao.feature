Feature: Auto-avaliação
    Como um aluno do professor da disciplina, 
    eu quero atribuir um conceito (MA, MPA ou MANA) a cada uma das metas avaliadas pelo professor,
    a fim de que possa me auto-avaliar no sistema.

Cenário: preencher a minha auto-avaliação corretamente
Dado que estou logado como o aluno “eaor”
E eu estou na tela “Auto-avaliação”
E vejo os conceitos “MA” e “MPA” atribuídos pelo professor às metas “Entender conceitos de requisitos” e “Especificar requisitos com qualidade”, respectivamente,
Quando eu atribuo o conceito “MA” à meta “Entender conceitos de requisitos”
E eu atribuo o conceito “MA” à meta “Especificar requisitos com qualidade” e confirmo,
Então eu vejo uma mensagem “Sua auto-avaliação foi preenchida com sucesso”,
E sou direcionado à tela de visualização de notas, com os conceitos “MA” e “MPA” atribuídos pelo professor, e os conceitos  “MA” e “MA” atribuídos por mim às metas “Entender conceitos de requisitos” e “Especificar requisitos com qualidade”, respectivamente.

Cenário: preencher a auto-avaliação corretamente
Dado que estou logado como o aluno “eaor”,
E o professor atribuiu os conceitos “MA” e “MPA” para mim às metas “Entender conceitos de requisitos” e “Especificar requisitos com qualidade”, respectivamente,
Quando eu solicito ao sistema para atribuir o conceito “MA” à meta “Entender conceitos de requisitos”
E solicito ao sistema para atribuir o conceito o conceito “MA” à meta “Especificar requisitos com qualidade”,
Então o sistema armazena os conceitos “MA” e “MPA” atribuídos pelo professor, e os conceitos  “MA” e “MA” atribuídos por mim às metas “Entender conceitos de requisitos” e “Especificar requisitos com qualidade”, respectivamente,
E retorna uma mensagem de confirmação “Auto-avaliação preenchida com sucesso”.

Cenário: preencher a minha auto-avaliação incorretamente
Dado que estou logado como o aluno “eaor”
E eu estou na tela “Auto-avaliação”
E vejo os conceitos “MA” e “MPA” atribuídos pelo professor às metas “Entender conceitos de requisitos” e “Especificar requisitos com qualidade”, respectivamente,
Quando eu atribuo o conceito “MA” à meta “Entender conceitos de requisitos” e confirmo,
Então eu vejo uma mensagem de erro “Nenhum conceito foi atribuído à meta ‘Especificar requisitos com qualidade’”,
E permaneço na tela de preenchimento de auto-avaliação.

Cenário: preencher a auto-avaliação incorretamente
Dado que estou logado como o aluno “eaor”
E o professor atribuiu os conceitos “MA” e “MPA” para mim às metas “Entender conceitos de requisitos” e “Especificar requisitos com qualidade”, respectivamente,
Quando eu solicito ao sistema para atribuir o conceito “MA” à meta “Entender conceitos de requisitos”,
Então o sistema retorna uma mensagem de erro “Nenhum conceito foi atribuído à meta ‘Especificar requisitos com qualidade’”,
E nada é armazenado ou alterado no sistema.

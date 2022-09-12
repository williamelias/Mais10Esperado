# Considerações iniciais

O presente projeto foi feito utilizando o framework Django (na sua versão 4.0) e usa a linguagem de programação Python na sua versão 3.10.7

## Iniciando a instalação

Necessário instalar ferramentas para gerenciamento de ambientes, no caso usei Vagrant e VirtualBox.
Para instalar no Linux (usei o linux Mint):

    sudo apt install virtualbox -y
    sudo apt install vagrant -y

## Configuração do vagrant

- Inicialização

Usaremos uma box de um sistema operacional unix fornecida pela vagrant, de arquitetura 32 bits

    $ vagrant box add hashicorp/precise32

- Declaração e subida do servidor

    $ vagrant init > gera um arquivo 'Vagrantfile'
    $ vagrant up > subirá as máquinas virtuais localmente
    saída:

        (venv) DevOps $ vagrant up
        Bringing machine 'db' up with 'virtualbox' provider...
        Bringing machine 'web' up with 'virtualbox' provider...
        ==> db: Checking if box 'hashicorp/precise32' version '1.0.0' is up to date...
        ==> db: Machine already provisioned. Run `vagrant provision` or use the `--provision`
        ==> db: flag to force provisioning. Provisioners marked to run always will still run.
        ==> web: Checking if box 'hashicorp/precise32' version '1.0.0' is up to date...
        ==> web: Fixed port collision for 22 => 2222. Now on port 2200.
        ==> web: Clearing any previously set network interfaces...
        ==> web: Preparing network interfaces based on configuration...
            web: Adapter 1: nat
            web: Adapter 2: hostonly
        ==> web: Forwarding ports...
            web: 22 (guest) => 2200 (host) (adapter 1)
        ==> web: Booting VM...
        ==> web: Waiting for machine to boot. This may take a few minutes...
            web: SSH address: 127.0.0.1:2200
            web: SSH username: vagrant
            web: SSH auth method: private key
            web: 
            web: Vagrant insecure key detected. Vagrant will automatically replace
            web: this with a newly generated keypair for better security.
            web: 
            web: Inserting generated public key within guest...
            web: Removing insecure key from the guest if it's present...
            web: Key inserted! Disconnecting and reconnecting using new SSH key...
        ==> web: Machine booted and ready!
        ==> web: Checking for guest additions in VM...
            web: The guest additions on this VM do not match the installed version of
            web: VirtualBox! In most cases this is fine, but in rare cases it can
            web: prevent things such as shared folders from working properly. If you see
            web: shared folder errors, please make sure the guest additions within the
            web: virtual machine match the version of VirtualBox you have installed on
            web: your host and reload your VM.
            web: 
            web: Guest Additions Version: 5.2.12
            web: VirtualBox Version: 6.1
        ==> web: Configuring and enabling network interfaces...
        ==> web: Mounting shared folders...
            web: /vagrant => /home/william/Documents/Desenvolvimento de software/projects/pessoais/DevOps


## Acesso às máquinas virtuais

realizar login no servidor

    $ vagrant ssh db | vagrant ssh web 

## Referências

Livro: DevOps na prática - entrega de software confiável e automatizada -Casa do Código
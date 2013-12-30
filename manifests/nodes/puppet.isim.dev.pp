node 'puppet.isim.dev'{
  include base
  include postfix
  include mysql
  include apache

  apache::vhost{'stage.isim.example':
    port          => 80,
    docroot       => '/var/www/stage.isim.example',
    ssl           => false,
    priority      => 10,
    serveraliases => 'home.stage.isim.example'
  }
}

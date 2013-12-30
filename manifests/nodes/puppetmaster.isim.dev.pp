node 'puppetmaster.isim.dev' {
  include base
  include apache

  apache::vhost{'dev.isim.example':
    port          => 80,
    docroot       => '/var/www/dev.isim.example',
    ssl           => false,
    priority      => 10,
    serveraliases => 'dev.isim.example'
  }
}

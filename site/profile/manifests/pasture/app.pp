class profile::pasture::app {
/*  if $facts['fqdn'] =~ 'large' {
    $default_character = 'elephant'
    $db                = 'postgres://pasture:m00m00@pasture-db.puppet.vm/pasture'
  } elsif $facts['fqdn'] =~ 'small' {
    $default_character = 'cow'
    $db                = 'none'
  } else {
    fail("The ${facts['fqdn']} node name must match 'large' or 'small'.")
  }
  class { 'pasture':
    default_message   => 'Hello Puppet!',
    sinatra_server    => 'thin',
    default_character => $default_character,
    db                => $db,
  }
*/

 class { 'pasture':
    default_message   => lookup('profile::pasture::app::default_message'),
    sinatra_server    => lookup('profile::pasture::app::sinatra_server'),
    default_character => lookup('profile::pasture::app::default_character'),
    db                => lookup('profile::pasture::app::db'),
  }
}

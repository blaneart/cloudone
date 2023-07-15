<?php
$i = 0;
$i++;
$cfg['Servers'][$i]['ssl'] = true;
$cfg['Servers'][$i]['ssl_key'] = '/certs/pma/certificate.key';
$cfg['Servers'][$i]['ssl_cert'] = '/certs/pma/certificate.pem';
$cfg['Servers'][$i]['ssl_ca'] = '/certs/ca-certificate.pem';


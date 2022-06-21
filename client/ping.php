<?php

declare(strict_types=1);

require __DIR__.'/vendor/autoload.php';

$client = new \EchoClient('192.168.231.2:9001', [
    'credentials' => \Grpc\ChannelCredentials::createInsecure(),
]);

$message = new Service\Message();
$message->setMsg('PING');

[$response, $status] = $client->Ping($message)->wait();

echo 'Status code: ' . $status->code . PHP_EOL;
echo 'Status details: ' . $status->details . PHP_EOL;

if ($response) {
    echo $response->getMsg() . PHP_EOL;
}

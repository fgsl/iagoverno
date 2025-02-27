<?php
namespace Application\Controller;

use Application\Model\SoftwareDeOrgaoTable;
use Interop\Container\ContainerInterface;
use Laminas\Db\TableGateway\TableGateway;
use Laminas\ServiceManager\Factory\FactoryInterface;

class CategoriaMaisUsadaControllerFactory implements FactoryInterface
{
    public function __invoke(ContainerInterface $container, $requestedName, array $options = null)
    {
        $adapter = $container->get('Laminas\Db\Adapter');
        $tableGateway = new TableGateway('software_orgao', $adapter);
        $table = new SoftwareDeOrgaoTable($tableGateway);
        return new CategoriaMaisUsadaController($table);
    }
}
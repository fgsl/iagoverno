<?php
namespace Application\Controller;

use Application\Model\Orgao;
use Application\Model\OrgaoTable;
use Application\Model\Software;
use Application\Model\SoftwareTable;
use Laminas\Db\ResultSet\ResultSet;
use Laminas\Db\TableGateway\TableGateway;
use Laminas\ServiceManager\Factory\FactoryInterface;
use Psr\Container\ContainerInterface;

class IndicadorControllerFactory implements FactoryInterface
{
    public function __invoke(ContainerInterface $container, $requestedName, array $options = null)
    {
        $adapter = $container->get('Laminas\Db\Adapter');
        $resultSet = new ResultSet();
        $resultSet->setArrayObjectPrototype(new Orgao('codigo','orgao',$adapter));
        $tableGateway = new TableGateway('orgao', $adapter, null, $resultSet);
        $table = new OrgaoTable($tableGateway);
        $resultSet->setArrayObjectPrototype(new Software('codigo','software',$adapter));
        $tableGateway = new TableGateway('software', $adapter, null, $resultSet);
        $parentTable = new SoftwareTable($tableGateway);
        return new IndicadorController($table, $parentTable);
    }
}
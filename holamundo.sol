// Versión 
pragma solidity ^0.4.0;

// Definición de contrato
contract HolaMundoProtectProfesional {
    string saludo = "Hola mundo";
    address propietario;
    
    function HolaMundoProtectProfesional() {
        propietario = msg.sender;
    }
    
    modifier propietarioContrato {
        if (propietario != msg.sender) {
            throw;
        } else {
            _;
        }
    }

    function getSaludo() constant returns(string) {
        return saludo;
    }

    function setSaludo(string nuevoSaludo) propietarioContrato returns(string){
        saludo = nuevoSaludo;
        return "Se ha cambiado el contenido correctamente";    
    }
}

﻿using ServicioWCF.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace ServicioWCF
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "Service1" en el código, en svc y en el archivo de configuración.
    // NOTE: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione Service1.svc o Service1.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class PService : User
    {
        public IEnumerable<Modelo.Usuario> Consultar()
        {
            using (DB_IntComexEntities5 contexto=new DB_IntComexEntities5())
            {
                return contexto.Usuarios.AsNoTracking().ToList();
            }
        }
    }
}

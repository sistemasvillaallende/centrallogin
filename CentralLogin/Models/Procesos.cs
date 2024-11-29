using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CentralLogin.Models
{
    public class Procesos
    {
        public int cod_proceso { get; set; }
        public string proceso { get; set; }

        public Procesos()
        {
            cod_proceso = 0;
            proceso = string.Empty;
        }
    }
}
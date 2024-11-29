using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CentralLogin.Models
{
    public class UsuarioLoginCIDI
    {
        public int cod_usuario { get; set; }
        public string nombre_usuario { get; set; }
        public int legajo { get; set; }
        public string sessionHash { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public string nombre_completo { get; set; }
        public string cuit { get; set; }
        public string cuit_formateado { get; set; }
        public bool administrador { get; set; }
        public int cod_oficina { get; set; }
        public string nombre_oficina { get; set; }
        public List<Procesos> lstProcesosPrincipales { get; set; }

        public UsuarioLoginCIDI()
        {
            cod_usuario = 0;
            nombre_usuario = string.Empty;
            legajo = 0;
            sessionHash = string.Empty;
            nombre = string.Empty;
            apellido = string.Empty;
            nombre_completo = string.Empty;
            cuit = string.Empty;
            cuit_formateado = string.Empty;
            administrador = false;
            cod_oficina = 0;
            nombre_oficina = string.Empty;
            lstProcesosPrincipales = new List<Procesos>();
        }
    }
}
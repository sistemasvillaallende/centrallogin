using CentralLogin.Models;
using Newtonsoft.Json;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentralLogin
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Request.Cookies["VABack.CIDI"] != null)
                    {
                        if (Request.Cookies["VABack.CIDI"]["SesionHash"] != null)
                        {
                            UsuarioLoginCIDI usuario = GetUsuarioLogeado(
                                Request.Cookies["VABack.CIDI"]["SesionHash"]);
                            if (usuario.cuit != string.Empty)
                            {
                                if (usuario.administrador)
                                    fillAdmin();
                                else
                                    validarPermisosUsuario(usuario);
                            }
                            else
                            {
                                DeleteCookie("VABack.CIDI");
                                Response.Redirect("Login.aspx");
                            }
                        }
                        else
                        {
                            DeleteCookie("VABack.CIDI");
                            Response.Redirect("Login.aspx");
                        }

                    }
                    else
                    {
                        if (Request.QueryString["cidi"] != null)
                        {
                            UsuarioLoginCIDI usuario =
                                GetUsuarioLogeado(Request.QueryString["cidi"]);
                            if(usuario.cuit != string.Empty)
                            {
                                GenerateCookie(usuario);
                                if (usuario.administrador)
                                    fillAdmin();
                                else
                                    validarPermisosUsuario(usuario);
                            }
                            else
                            {
                                DeleteCookie("VABack.CIDI");
                                Response.Redirect("Login.aspx");
                            }
                        }
                        else
                        {
                            DeleteCookie("VABack.CIDI");
                            Response.Redirect("Login.aspx");
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        protected UsuarioLoginCIDI GetUsuarioLogeado(string hash)
        {
            try
            {
                UsuarioLoginCIDI usuario = null;
                var options = new RestClientOptions("http://10.0.0.24")
                {
                    MaxTimeout = -1,
                };
                var client = new RestClient(options);
                var request = new RestRequest(string.Format(
                    "/CiDiLogin/Usuario/GetUsuarioLogueado?hash={0}",
                    hash, Method.Get));

                RestResponse response = client.Execute(request);
                usuario =
                    JsonConvert.DeserializeObject<UsuarioLoginCIDI>(
                        response.Content);
                return usuario;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        protected void DeleteCookie(string cookieName)
        {
            // Verificar si la cookie existe en la solicitud
            if (Request.Cookies[cookieName] != null)
            {
                // Crear una nueva cookie con el mismo nombre pero vacía
                HttpCookie cookie = new HttpCookie(cookieName)
                {
                    Expires = DateTime.Now.AddDays(-1), // Fecha de expiración en el pasado
                    Value = string.Empty // Dejar el valor vacío
                };

                // Agregarla a la respuesta para sobrescribir la existente
                Response.Cookies.Add(cookie);

                // También eliminarla del lado del servidor
                Request.Cookies.Remove(cookieName);
            }
        }
        protected void GenerateCookie(UsuarioLoginCIDI usuario)
        {
            try
            {
                int admin = 0;
                if (usuario.administrador)
                    admin = 1;

                this.Response.Cookies.Add(new HttpCookie("VABack.CIDI")
                {
                    ["administrador"] = admin.ToString(),
                    ["apellido"] = usuario.apellido,
                    ["cod_oficina"] = usuario.cod_oficina.ToString(),
                    ["cod_usuario"] = usuario.cod_usuario.ToString(),
                    ["cuit"] = usuario.cuit,
                    ["cuit_formateado"] = usuario.cuit_formateado,
                    ["legajo"] = usuario.legajo.ToString(),
                    ["nombre"] = usuario.nombre,
                    ["nombre_completo"] = usuario.nombre_completo,
                    ["nombre_oficina"] = usuario.nombre_oficina,
                    ["nombre_usuario"] = usuario.nombre_usuario,
                    ["SesionHash"] = usuario.sessionHash,
                    ["lstPermisos"] = JsonConvert.SerializeObject(
                    usuario.lstProcesosPrincipales),
                    Expires = DateTime.Now.AddDays(1000.0)
                });
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void btnCerraSession_ServerClick(object sender, EventArgs e)
        {
            // Verifica si la cookie existe
            if (Request.Cookies["VABack.CIDI"] != null)
            {
                // Expira la cookie para eliminarla del cliente
                HttpCookie cookie = new HttpCookie("VABack.CIDI")
                {
                    Expires = DateTime.Now.AddDays(-1), // Fecha de expiración en el pasado
                    Path = "/" // Asegúrate de que sea consistente con la creación de la cookie
                };

                // Agrega la cookie expirada para sobrescribir la existente en el cliente
                Response.Cookies.Add(cookie);
            }

            // Redirige al usuario a la página de login
            Response.Redirect("~/index.aspx");
        }

        protected void fillAdmin()
        {
            try
            {
                AUTOMOTORES.Visible = true;
                TASA.Visible = true;
                INDYCOM.Visible = true;
                MESA_ENTRADA.Visible = true;
                TOTEM.Visible = true;
                NOTIFICACION_DIGITAL.Visible = true;
                VECINO_VISTA.Visible = true;
                VECINO_BACK.Visible = true;
                LICENCIA_CONDUCIR.Visible = true;
                REGISTRO_CIVIL.Visible = true;
                MOTOR_WORKFLOW_ATENCION.Visible = true;
                HELP_DESK_RECLAMO.Visible = true;
                //HELP_DESK_ATENCION.Visible = true;
                LICENCIA_CONDUCIR_CONFIGURACION.Visible = true;
                REGISTRO_CIVIL_CONFIGURACION.Visible = true;

                BACKEND_TRAMITES_ADM.Visible = true;
                TOTEM_CONFIGURACION.Visible = true;
                MOTOR_WORKFLOW_CONFIGURACION.Visible = true;
                btnConfiguracion.Visible = true;


            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void validarPermisosUsuario(Models.UsuarioLoginCIDI obj)
        {
            try
            {
                if (obj.lstProcesosPrincipales.Exists(
    p => p.proceso.Trim() == "AUTOMOTORES"))
                    AUTOMOTORES.Visible = true;
                else
                    AUTOMOTORES.Visible = false;

                if (obj.lstProcesosPrincipales.Exists(
                    p => p.proceso.Trim() == "TASA"))
                    TASA.Visible = true;
                else
                    TASA.Visible = false;

                if (obj.lstProcesosPrincipales.Exists(
                    p => p.proceso.Trim() == "INDYCOM"))
                    INDYCOM.Visible = true;
                else
                    INDYCOM.Visible = false;

                if (obj.lstProcesosPrincipales.Exists(
                    p => p.proceso.Trim() == "MESA_ENTRADA"))
                    MESA_ENTRADA.Visible = true;
                else
                    MESA_ENTRADA.Visible = false;

                if (obj.lstProcesosPrincipales.Exists(
                    p => p.proceso.Trim() == "TOTEM"))
                    TOTEM.Visible = true;
                else
                    TOTEM.Visible = false;

                if (obj.lstProcesosPrincipales.Exists(
                    p => p.proceso.Trim() == "NOTIFICACION_DIGITAL"))
                    NOTIFICACION_DIGITAL.Visible = true;
                else
                    NOTIFICACION_DIGITAL.Visible = false;

                if (obj.lstProcesosPrincipales.Exists(
                    p => p.proceso.Trim() == "VECINO_VISTA"))
                    VECINO_VISTA.Visible = true;
                else
                    VECINO_VISTA.Visible = false;

                if (obj.lstProcesosPrincipales.Exists(
                    p => p.proceso.Trim() == "VECINO_BACK"))
                    VECINO_BACK.Visible = true;
                else
                    VECINO_BACK.Visible = false;

                if (obj.lstProcesosPrincipales.Exists(
                    p => p.proceso.Trim() == "LICENCIA_CONDUCIR"))
                    LICENCIA_CONDUCIR.Visible = true;
                else
                    LICENCIA_CONDUCIR.Visible = false;

                if (obj.lstProcesosPrincipales.Exists(
                    p => p.proceso.Trim() == "REGISTRO_CIVIL"))
                    REGISTRO_CIVIL.Visible = true;
                else
                    REGISTRO_CIVIL.Visible = false;

                if (obj.lstProcesosPrincipales.Exists(
                    p => p.proceso.Trim() == "MOTOR_WORKFLOW_ATENCION"))
                    MOTOR_WORKFLOW_ATENCION.Visible = true;
                else
                    MOTOR_WORKFLOW_ATENCION.Visible = false;

                if (obj.lstProcesosPrincipales.Exists(
                    p => p.proceso.Trim() == "HELP_DESK_RECLAMO"))
                    HELP_DESK_RECLAMO.Visible = true;
                else
                    HELP_DESK_RECLAMO.Visible = false;

                bool control = false;

                //                if (obj.lstProcesosPrincipales.Exists(
                //p => p.proceso.Trim() == "HELP_DESK_ATENCION"))
                //                {
                //                    HELP_DESK_ATENCION.Visible = true;
                //                    control = true;
                //                }
                //                else
                //                    HELP_DESK_ATENCION.Visible = false;

                if (obj.lstProcesosPrincipales.Exists(
p => p.proceso.Trim() == "LICENCIA_CONDUCIR_CONFIGURACION"))
                {
                    LICENCIA_CONDUCIR_CONFIGURACION.Visible = true;
                    control = true;
                }
                else
                    LICENCIA_CONDUCIR_CONFIGURACION.Visible = false;

                if (obj.lstProcesosPrincipales.Exists(
p => p.proceso.Trim() == "REGISTRO_CIVIL_CONFIGURACION"))
                {
                    REGISTRO_CIVIL_CONFIGURACION.Visible = true;
                    control = true;
                }
                else
                    REGISTRO_CIVIL_CONFIGURACION.Visible = false;

                if (obj.lstProcesosPrincipales.Exists(
p => p.proceso.Trim() == "BACKEND_TRAMITES_ADM"))
                {
                    BACKEND_TRAMITES_ADM.Visible = true;
                    control = true;
                }
                else
                    BACKEND_TRAMITES_ADM.Visible = false;

                if (obj.lstProcesosPrincipales.Exists(
p => p.proceso.Trim() == "TOTEM_CONFIGURACION"))
                {
                    TOTEM_CONFIGURACION.Visible = true;
                    control = true;
                }
                else
                    TOTEM_CONFIGURACION.Visible = false;

                if (control)
                    btnConfiguracion.Visible = true;
                else
                    btnConfiguracion.Visible = false;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
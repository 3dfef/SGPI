using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;
using System.Web.Security;

namespace SGPI
{
    public class Criptografia
    {
        /// <summary>
        /// Metodo para retornar el hash de un texto claro ingresado como parametro
        /// </summary>
        /// <param name="textoClaro">texto claro a convertir</param>
        /// <returns>hash del texto ingresado como parametro</returns>
        
        public string CodigoHash(String textoClaro)
        {
            StringBuilder stringBuilder = new StringBuilder();
            using (SHA256 sHA256= new SHA256Managed())
            {

                byte[] bytes = sHA256.ComputeHash(Encoding.ASCII.GetBytes (textoClaro));
                for (int i = 0; i< bytes.Length; i++)
                {

                    stringBuilder.Append(bytes[i].ToString("x2"));
                }
                
            }
            return stringBuilder.ToString();
        }

        public string GenerarPass()
        {
         return Membership.GeneratePassword(12, 3);
        }
    }
}
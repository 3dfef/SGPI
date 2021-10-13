using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;

namespace SGPI
{
    public class Criptografia
    {
        
        public string CodigoHash(String textoClaro)
        {

            using (SHA256 sHA256= new SHA256Managed())
            {

                byte[] bytes = sHA256.ComputeHash(Encoding.ASCII.GetBytes (textoClaro));
                stringBuilder
            }
        }
    }
}
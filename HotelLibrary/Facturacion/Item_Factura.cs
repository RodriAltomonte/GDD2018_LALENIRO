﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FrbaHotel.Facturacion
{
    public class Item_Factura
    {
        public int cantidad{get;set;}
        public int monto {get;set;}
        public List<Consumible> consumibles {get;set;}

    }
}

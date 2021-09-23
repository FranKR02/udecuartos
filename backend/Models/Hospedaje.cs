﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Backend.Models
{
    public class Hospedaje
    {
        public int Id { get; set; }
        [Required]
        public string Titulo { get; set; }
        [Required]
        public string Tipo { get; set; }
        [Required]
        public string Direccion { get; set; }

        public string[] Servicios { get; set; }
    }
}

﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Optimus.Models
{
    public class BundleViewModel
    {
        [Display(Name = "Virtual path:")]
        public string VirtualPath { get; set; }

        [Display(Name = "Disable minification:")]
        public bool DisableMinification { get; set; }

        [Display(Name = "Files in bundle:")]
        public IEnumerable<string> Files { get; set; }
    }
}
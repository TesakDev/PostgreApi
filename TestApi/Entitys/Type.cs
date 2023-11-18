using System;
using System.Collections.Generic;

namespace TestApi.Entitys;

public partial class Type
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public virtual ICollection<Userstype> Userstypes { get; set; } = new List<Userstype>();
}

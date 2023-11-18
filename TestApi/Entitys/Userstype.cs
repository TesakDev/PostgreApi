using System;
using System.Collections.Generic;

namespace TestApi.Entitys;

public partial class Userstype
{
    public int Id { get; set; }

    public int Userid { get; set; }

    public int Typeid { get; set; }

    public virtual Type Type { get; set; } = null!;

    public virtual User User { get; set; } = null!;
}

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace LoginDemoServer.Models;

public partial class Grade
{
    [Key]
    [Column("GradeID")]
    public int GradeId { get; set; }

    [StringLength(100)]
    public string? Email { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime? TestDate { get; set; }

    public int? GradeNum { get; set; }

    [StringLength(50)]
    public string SubjectName { get; set; } = null!;

    [ForeignKey("Email")]
    [InverseProperty("Grades")]
    public virtual User? EmailNavigation { get; set; }
}

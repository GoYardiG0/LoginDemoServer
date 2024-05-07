namespace LoginDemoServer.DTO
{
    public class GradeDTO
    {
        public int GradeId { get; set; }
        public string? Email { get; set; }

        public DateTime? TestDate { get; set; }
        public int? GradeNum { get; set; }
        public string SubjectName { get; set; } = null!;
    }
}

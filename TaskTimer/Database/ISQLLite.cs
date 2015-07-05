using SQLite;

namespace TaskTimer.Database
{
    public interface ISQLite
    {
        SQLiteConnection GetConnection();
    }
}

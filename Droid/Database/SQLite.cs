using System;
using System.IO;
using SQLite;
using TaskTimer.Database;
using TaskTimer.Settings;

namespace TaskTimer.Droid.Database
{
    public class SQLite : ISQLite
    {
        public SQLite()
        {
        }

        public SQLiteConnection GetConnection()
        {
            var sqliteFilename = Configurations.DatabseName;
            string documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
                // Documents folder
            var path = Path.Combine(documentsPath, sqliteFilename);
            // Create the connection
            var conn = new SQLiteConnection(path);
            // Return the database connection
            return conn;
        }
    }
}
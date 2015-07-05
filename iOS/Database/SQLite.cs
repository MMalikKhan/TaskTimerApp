using System;
using System.IO;
using SQLite;
using TaskTimer.Database;
using TaskTimer.Settings;

namespace TaskTimer.iOS.Database
{
    public class SQLite : ISQLite
    {
        public SQLite()
        {
        }

        public SQLiteConnection GetConnection()
        {
            string sqliteFilename = Configurations.DatabseName;
            string documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal); // Documents folder
            string libraryPath = Path.Combine(documentsPath, "..", "Library"); // Library folder
            var path = Path.Combine(libraryPath, sqliteFilename);

            var conn = new SQLiteConnection(path);

            // Return the database connection 
            return conn;
        }
    }
}
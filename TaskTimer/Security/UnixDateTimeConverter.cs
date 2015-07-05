using System;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;

namespace TaskTimer.Security
{
    /// <summary>
    /// http://cgeers.com/2011/09/25/writing-a-custom-json-net-datetime-converter/#unix
    /// </summary>
    public class UnixDateTimeConverter : DateTimeConverterBase
    {
        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            throw new NotImplementedException();
        }

        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer)
        {
            var ticks = ParseTicks(reader);

            return DateTimeExtensions.FromUnixTime(ticks * 1000);
        }

        private static long ParseTicks(JsonReader reader)
        {
            if (reader.TokenType == JsonToken.Integer)
            {
                return (long)reader.Value;
            }

            long ticks;
            if (reader.TokenType == JsonToken.String && long.TryParse((string)reader.Value, out ticks))
                return ticks;

            throw new Exception(String.Format("Unexpected token parsing date. Expected Integer, got {0}.", reader.TokenType));
        }
    }
}
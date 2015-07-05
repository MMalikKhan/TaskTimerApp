using System;

namespace TaskTimer.Security
{
    public class SignatureVerificationException : Exception
    {
        public SignatureVerificationException(string message)
            : base(message)
        {
        }
    }
}

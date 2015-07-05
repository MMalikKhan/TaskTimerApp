namespace TaskTimer.Constants
{
    public class ErrorMessages
    {
        public const string ErrorLoadingReferenceData = "Error loading Task Timer data.\nTry again shortly, if the problem persists please contact IT support.";


        public const string DeleteTaskConfirmation = "Are you sure you want to delete this task?";

        public const string DeleteTaskConfirmationTitle = "Delete Task?";

        public enum ErrorType
        {
            Error,
            Information,
            Confirmation,
            Warning
        }

        public enum MesssageButton
        {
            Ok,
            Yes,
            No,
            Cancel
        }

    }
}


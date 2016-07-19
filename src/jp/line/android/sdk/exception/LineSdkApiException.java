package jp.line.android.sdk.exception;

public class LineSdkApiException
  extends Exception
{
  private static final long serialVersionUID = 1L;
  public final LineSdkApiError apiError;
  public final int httpStatusCode;
  public final a serverError;
  
  public LineSdkApiException(LineSdkApiError paramLineSdkApiError)
  {
    super(a(null, paramLineSdkApiError, -1, null));
    apiError = paramLineSdkApiError;
    httpStatusCode = -1;
    serverError = null;
  }
  
  public LineSdkApiException(LineSdkApiError paramLineSdkApiError, int paramInt, String paramString)
  {
    super(a(paramString, paramLineSdkApiError, paramInt, null));
    apiError = paramLineSdkApiError;
    httpStatusCode = paramInt;
    serverError = null;
  }
  
  public LineSdkApiException(LineSdkApiError paramLineSdkApiError, int paramInt, a parama)
  {
    super(a(null, paramLineSdkApiError, paramInt, parama));
    apiError = paramLineSdkApiError;
    httpStatusCode = paramInt;
    serverError = parama;
  }
  
  public LineSdkApiException(LineSdkApiError paramLineSdkApiError, String paramString)
  {
    super(a(paramString, paramLineSdkApiError, -1, null));
    apiError = paramLineSdkApiError;
    httpStatusCode = -1;
    serverError = null;
  }
  
  public LineSdkApiException(LineSdkApiError paramLineSdkApiError, Throwable paramThrowable)
  {
    super(a(null, paramLineSdkApiError, -1, null), paramThrowable);
    apiError = paramLineSdkApiError;
    httpStatusCode = -1;
    serverError = null;
  }
  
  private static final String a(String paramString, LineSdkApiError paramLineSdkApiError, int paramInt, a parama)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramString != null) {
      localStringBuilder.append(paramString);
    }
    if (parama != null) {
      localStringBuilder.append(" serverError=").append(parama);
    }
    localStringBuilder.append(" LineSdkApiError=").append(paramLineSdkApiError);
    if (paramInt > 0) {
      localStringBuilder.append(" httpStatusCode=").append(paramInt);
    }
    return localStringBuilder.toString();
  }
  
  public final boolean isAccessTokenExpired()
  {
    return (apiError == LineSdkApiError.SERVER_ERROR) && (httpStatusCode == 401) && ((serverError == null) || (serverError.a == 412) || (serverError.a == 401));
  }
}

/* Location:
 * Qualified Name:     jp.line.android.sdk.exception.LineSdkApiException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
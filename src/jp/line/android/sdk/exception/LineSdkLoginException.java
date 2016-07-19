package jp.line.android.sdk.exception;

public class LineSdkLoginException
  extends Exception
{
  private static final long serialVersionUID = 1L;
  public final LineSdkLoginError error;
  public final int errorCode;
  
  public LineSdkLoginException(LineSdkLoginError paramLineSdkLoginError)
  {
    this(paramLineSdkLoginError, -1, null, null);
  }
  
  public LineSdkLoginException(LineSdkLoginError paramLineSdkLoginError, int paramInt)
  {
    this(paramLineSdkLoginError, paramInt, null, null);
  }
  
  public LineSdkLoginException(LineSdkLoginError paramLineSdkLoginError, int paramInt, String paramString, Throwable paramThrowable)
  {
    super(a(paramString, paramLineSdkLoginError, paramInt), paramThrowable);
    error = paramLineSdkLoginError;
    errorCode = paramInt;
  }
  
  public LineSdkLoginException(LineSdkLoginError paramLineSdkLoginError, String paramString)
  {
    this(paramLineSdkLoginError, -1, paramString, null);
  }
  
  public LineSdkLoginException(LineSdkLoginError paramLineSdkLoginError, Throwable paramThrowable)
  {
    this(paramLineSdkLoginError, -1, null, paramThrowable);
  }
  
  private static final String a(String paramString, LineSdkLoginError paramLineSdkLoginError, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramString != null) {
      localStringBuilder.append(paramString);
    }
    localStringBuilder.append(" error=").append(paramLineSdkLoginError);
    if (paramInt >= 0) {
      localStringBuilder.append(", errorCode=").append(paramInt);
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     jp.line.android.sdk.exception.LineSdkLoginException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
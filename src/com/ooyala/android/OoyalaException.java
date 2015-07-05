package com.ooyala.android;

public class OoyalaException
  extends Exception
{
  private static final long serialVersionUID = 1L;
  private OoyalaException.OoyalaErrorCode _code;
  
  public OoyalaException(OoyalaException.OoyalaErrorCode paramOoyalaErrorCode)
  {
    _code = paramOoyalaErrorCode;
  }
  
  public OoyalaException(OoyalaException.OoyalaErrorCode paramOoyalaErrorCode, String paramString)
  {
    super(paramString);
    _code = paramOoyalaErrorCode;
  }
  
  public OoyalaException(OoyalaException.OoyalaErrorCode paramOoyalaErrorCode, String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
    _code = paramOoyalaErrorCode;
  }
  
  public OoyalaException(OoyalaException.OoyalaErrorCode paramOoyalaErrorCode, Throwable paramThrowable)
  {
    super(paramThrowable);
    _code = paramOoyalaErrorCode;
  }
  
  public OoyalaException.OoyalaErrorCode getCode()
  {
    return _code;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
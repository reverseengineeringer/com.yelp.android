package com.yelp.android.analytics.adjust;

import com.adjust.sdk.ILogger;
import com.adjust.sdk.LogLevel;
import com.adjust.sdk.Logger;
import com.yelp.android.util.YelpLog;
import java.util.Locale;

public class YelpAdjustLogger
  implements ILogger
{
  private Logger a = new Logger();
  
  public void Assert(String paramString, Object... paramVarArgs)
  {
    a.Assert(paramString, paramVarArgs);
  }
  
  public void debug(String paramString, Object... paramVarArgs)
  {
    a.debug(paramString, paramVarArgs);
  }
  
  public void error(String paramString, Object... paramVarArgs)
  {
    YelpLog.remoteError(this, new AdjustException(String.format(Locale.US, "adjust error: " + paramString, paramVarArgs)));
    a.error(paramString, paramVarArgs);
  }
  
  public void info(String paramString, Object... paramVarArgs)
  {
    a.info(paramString, paramVarArgs);
  }
  
  public void setLogLevel(LogLevel paramLogLevel)
  {
    a.setLogLevel(paramLogLevel);
  }
  
  public void setLogLevelString(String paramString)
  {
    a.setLogLevelString(paramString);
  }
  
  public void verbose(String paramString, Object... paramVarArgs)
  {
    a.verbose(paramString, paramVarArgs);
  }
  
  public void warn(String paramString, Object... paramVarArgs)
  {
    YelpLog.remoteError(this, new AdjustException(String.format(Locale.US, "adjust warning: " + paramString, paramVarArgs)));
    a.warn(paramString, paramVarArgs);
  }
  
  private static class AdjustException
    extends Exception
  {
    public AdjustException()
    {
      YelpLog.removeTopOfStackTrace(this);
    }
    
    public AdjustException(String paramString)
    {
      super();
      YelpLog.removeTopOfStackTrace(this);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.adjust.YelpAdjustLogger
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
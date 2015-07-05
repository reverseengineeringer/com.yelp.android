package com.google.android.gms.analytics;

import android.content.Context;
import java.util.ArrayList;

public class ExceptionReporter
  implements Thread.UncaughtExceptionHandler
{
  private final Context mContext;
  private final Thread.UncaughtExceptionHandler yN;
  private final Tracker yO;
  private ExceptionParser yP;
  private GoogleAnalytics yQ;
  
  public ExceptionReporter(Tracker paramTracker, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler, Context paramContext)
  {
    if (paramTracker == null) {
      throw new NullPointerException("tracker cannot be null");
    }
    if (paramContext == null) {
      throw new NullPointerException("context cannot be null");
    }
    yN = paramUncaughtExceptionHandler;
    yO = paramTracker;
    yP = new StandardExceptionParser(paramContext, new ArrayList());
    mContext = paramContext.getApplicationContext();
    paramContext = new StringBuilder().append("ExceptionReporter created, original handler is ");
    if (paramUncaughtExceptionHandler == null) {}
    for (paramTracker = "null";; paramTracker = paramUncaughtExceptionHandler.getClass().getName())
    {
      ae.V(paramTracker);
      return;
    }
  }
  
  GoogleAnalytics es()
  {
    if (yQ == null) {
      yQ = GoogleAnalytics.getInstance(mContext);
    }
    return yQ;
  }
  
  Thread.UncaughtExceptionHandler et()
  {
    return yN;
  }
  
  public ExceptionParser getExceptionParser()
  {
    return yP;
  }
  
  public void setExceptionParser(ExceptionParser paramExceptionParser)
  {
    yP = paramExceptionParser;
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    Object localObject = "UncaughtException";
    if (yP != null) {
      if (paramThread == null) {
        break label115;
      }
    }
    label115:
    for (localObject = paramThread.getName();; localObject = null)
    {
      localObject = yP.getDescription((String)localObject, paramThrowable);
      ae.V("Tracking Exception: " + (String)localObject);
      yO.send(new HitBuilders.ExceptionBuilder().setDescription((String)localObject).setFatal(true).build());
      localObject = es();
      ((GoogleAnalytics)localObject).dispatchLocalHits();
      ((GoogleAnalytics)localObject).dY();
      if (yN != null)
      {
        ae.V("Passing exception to original handler.");
        yN.uncaughtException(paramThread, paramThrowable);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.ExceptionReporter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
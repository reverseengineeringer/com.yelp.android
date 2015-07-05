package com.google.android.gms.analytics;

public class ae
{
  private static GoogleAnalytics BL;
  private static volatile boolean BM = false;
  private static Logger BN;
  
  public static void T(String paramString)
  {
    Logger localLogger = getLogger();
    if (localLogger != null) {
      localLogger.error(paramString);
    }
  }
  
  public static void U(String paramString)
  {
    Logger localLogger = getLogger();
    if (localLogger != null) {
      localLogger.info(paramString);
    }
  }
  
  public static void V(String paramString)
  {
    Logger localLogger = getLogger();
    if (localLogger != null) {
      localLogger.verbose(paramString);
    }
  }
  
  public static void W(String paramString)
  {
    Logger localLogger = getLogger();
    if (localLogger != null) {
      localLogger.warn(paramString);
    }
  }
  
  public static boolean ff()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (getLogger() != null)
    {
      bool1 = bool2;
      if (getLogger().getLogLevel() == 0) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  static Logger getLogger()
  {
    try
    {
      Logger localLogger;
      if (BM)
      {
        if (BN == null) {
          BN = new p();
        }
        localLogger = BN;
        return localLogger;
      }
      if (BL == null) {
        BL = GoogleAnalytics.eY();
      }
      if (BL != null)
      {
        localLogger = BL.getLogger();
        return localLogger;
      }
    }
    finally {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.facebook.appevents;

final class AppEventsLogger$2
  implements Runnable
{
  public void run()
  {
    if (AppEventsLogger.a() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY) {
      AppEventsLogger.a(AppEventsLogger.FlushReason.TIMER);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.appevents.AppEventsLogger.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
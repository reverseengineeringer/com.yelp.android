package com.yelp.android.services.backgroundlocation;

import android.app.IntentService;
import android.content.Intent;
import com.yelp.android.appdata.AppData;

public class WatchDogTimerService
  extends IntentService
{
  public WatchDogTimerService()
  {
    super("WatchDogTimerService");
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    AppData.b().s().c();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.backgroundlocation.WatchDogTimerService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
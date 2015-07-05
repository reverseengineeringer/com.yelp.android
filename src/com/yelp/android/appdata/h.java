package com.yelp.android.appdata;

import com.yelp.android.services.d;
import com.yelp.android.ui.activities.nearby.ActivityNearby;

class h
  implements Runnable
{
  h(AppData paramAppData) {}
  
  public void run()
  {
    try
    {
      d.a();
      ActivityNearby.a(a);
      return;
    }
    catch (Exception localException)
    {
      localException = localException;
      ActivityNearby.a(a);
      return;
    }
    finally
    {
      localObject = finally;
      ActivityNearby.a(a);
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.yelp.android.util;

import com.yelp.android.appdata.AppData;
import com.yelp.android.debug.Debug;
import com.yelp.android.ui.util.cr;

class am
  implements Runnable
{
  am(YelpLogDelegate paramYelpLogDelegate, String paramString) {}
  
  public void run()
  {
    if (AppData.b().o().e()) {
      cr.a(a, 0);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
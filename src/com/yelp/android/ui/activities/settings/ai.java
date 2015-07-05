package com.yelp.android.ui.activities.settings;

import java.util.Iterator;
import java.util.List;

class ai
  implements Runnable
{
  ai(PreferenceScreenFragment paramPreferenceScreenFragment, List paramList) {}
  
  public void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      PreferenceView localPreferenceView = (PreferenceView)localIterator.next();
      b.b(localPreferenceView);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
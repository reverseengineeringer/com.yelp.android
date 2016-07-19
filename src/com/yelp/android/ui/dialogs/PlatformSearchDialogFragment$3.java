package com.yelp.android.ui.dialogs;

import android.os.Bundle;
import com.yelp.android.serializable.PlatformFilter;
import com.yelp.android.serializable.PlatformRSSTermMap;
import com.yelp.android.ui.activities.search.vertical.DeliveryPickupViewController.a;

class PlatformSearchDialogFragment$3
  implements DeliveryPickupViewController.a
{
  PlatformSearchDialogFragment$3(PlatformSearchDialogFragment paramPlatformSearchDialogFragment) {}
  
  public void a(PlatformFilter paramPlatformFilter, String paramString)
  {
    PlatformRSSTermMap localPlatformRSSTermMap;
    if (PlatformSearchDialogFragment.b(a) != null)
    {
      localPlatformRSSTermMap = (PlatformRSSTermMap)a.getArguments().getParcelable("search_term_map");
      if (!paramPlatformFilter.a().equals("delivery")) {
        break label68;
      }
    }
    for (;;)
    {
      PlatformSearchDialogFragment.b(a).a(paramPlatformFilter, localPlatformRSSTermMap.a(paramPlatformFilter.a()), paramString);
      a.dismiss();
      return;
      label68:
      paramString = a.getArguments().getString("location_term");
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.PlatformSearchDialogFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
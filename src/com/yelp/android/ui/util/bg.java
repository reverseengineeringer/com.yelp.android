package com.yelp.android.ui.util;

import android.content.Context;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.util.r;
import java.lang.ref.WeakReference;

class bg
  implements MenuItem.OnMenuItemClickListener
{
  private final WeakReference<Context> a;
  private final YelpBusiness b;
  
  public bg(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    a = new WeakReference(paramContext);
    b = paramYelpBusiness;
  }
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (a.get() == null) {
      return false;
    }
    r.a((Context)a.get(), b);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
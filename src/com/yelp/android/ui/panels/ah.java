package com.yelp.android.ui.panels;

import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.cw;
import java.util.ArrayList;
import java.util.List;

class ah
  implements at
{
  ah(YourNextReviewAwaitsFragment paramYourNextReviewAwaitsFragment) {}
  
  public void a()
  {
    ((YelpListActivity)a.getActivity()).q().setSendTouchesView(null);
  }
  
  public void a(ak paramak) {}
  
  public void b(ak paramak)
  {
    ((YelpListActivity)a.getActivity()).q().setSendTouchesView(paramak);
  }
  
  public void c(ak paramak)
  {
    YourNextReviewAwaitsFragment.a(a).remove(paramak);
    YourNextReviewAwaitsFragment.b(a).remove(paramak.getSuggestion());
    if (YourNextReviewAwaitsFragment.b(a).size() == 0)
    {
      paramak = a.getView();
      if (paramak != null) {
        cw.a(paramak, cw.c, false, new ai(this));
      }
      return;
    }
    cw.a(paramak, cw.c, false, null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.yelp.android.ui.activities.search;

import com.yelp.android.ui.util.cc;
import java.util.List;

class ap
  implements cc<CharSequence>
{
  ap(SearchOverlay paramSearchOverlay) {}
  
  public void a()
  {
    SearchOverlay.j(a).notifyDataSetInvalidated();
    SearchOverlay.i(a);
  }
  
  public void a(List<CharSequence> paramList)
  {
    SearchOverlay.j(a).a(paramList);
    SearchOverlay.i(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
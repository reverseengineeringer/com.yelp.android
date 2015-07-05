package com.yelp.android.ui.activities.search;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.ap;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse.Foldability;
import com.yelp.android.appdata.webrequests.fv;

class p
  implements View.OnClickListener
{
  p(l paraml, SearchRequest.SearchResponse.Foldability paramFoldability) {}
  
  public void onClick(View paramView)
  {
    paramView = paramView.getContext();
    Object localObject = l.a(b).i();
    if (a == SearchRequest.SearchResponse.Foldability.FOLDED) {}
    for (boolean bool = true;; bool = false)
    {
      localObject = SearchBusinessesByList.a(paramView, ((fv)localObject).a(bool).a());
      ((Intent)localObject).addFlags(65536);
      paramView.startActivity((Intent)localObject);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.yelp.android.ui.activities.search;

import android.content.res.Resources;
import android.location.Geocoder;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.k;
import com.yelp.android.ui.util.af;
import java.util.ArrayList;

class SearchOverlay$14
  implements View.OnFocusChangeListener
{
  SearchOverlay$14(SearchOverlay paramSearchOverlay) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    SearchOverlay.a(a, (ImageView)a.findViewById(2131690086));
    if (!paramBoolean) {}
    do
    {
      return;
      if (paramView == SearchOverlay.a(a))
      {
        SearchOverlay.j(a).setAdapter(SearchOverlay.i(a));
        SearchOverlay.j(a).setOnItemClickListener(a.e);
        if (SearchOverlay.k(a).equals(a.getString(2131165745)))
        {
          paramView = AppData.b().r().c();
          SearchOverlay.b(a).setCompoundDrawablesWithIntrinsicBounds(a.getResources().getDrawable(2130838687), null, null, null);
          SearchOverlay.l(a).a(paramView);
          SearchOverlay.l(a).a(SearchOverlay.b(a).getText().toString());
          SearchOverlay.l(a).filter(SearchOverlay.a(a).getText().toString());
        }
      }
      while (TextUtils.isEmpty(SearchOverlay.b(a).getText())) {
        if (SearchOverlay.b(a).hasFocus())
        {
          SearchOverlay.b(a).setHint("");
          return;
          SearchOverlay.b(a).setCompoundDrawablesWithIntrinsicBounds(a.getResources().getDrawable(2130838686), null, null, null);
          if (SearchOverlay.m(a) != null) {
            SearchOverlay.m(a).cancel(true);
          }
          SearchOverlay.a(a, new SearchOverlay.a(a, new Geocoder(a)));
          SearchOverlay.m(a).execute(new String[] { SearchOverlay.b(a).getText().toString() });
          continue;
          if (paramView == SearchOverlay.b(a))
          {
            SearchOverlay.n(a).setVisibility(8);
            SearchOverlay.b(a).setNextFocusDownId(2131690894);
            SearchOverlay.j(a).setAdapter(SearchOverlay.h(a));
            SearchOverlay.j(a).setOnItemClickListener(a.f);
          }
        }
        else
        {
          if (k.b(a.c(), PermissionGroup.LOCATION))
          {
            SearchOverlay.b(a).setHint(a.getString(2131165846));
            return;
          }
          SearchOverlay.b(a).setHint(a.getString(2131165745));
          return;
        }
      }
    } while ((SearchOverlay.b(a).hasFocus()) || (!SearchOverlay.c(a).contains(SearchOverlay.b(a).getText().toString())));
    SearchOverlay.b(a).setHint(SearchOverlay.b(a).getText());
    SearchOverlay.b(a).setText("");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchOverlay.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
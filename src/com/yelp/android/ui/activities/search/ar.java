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
import com.yelp.android.ui.util.bj;
import java.util.ArrayList;

class ar
  implements View.OnFocusChangeListener
{
  ar(SearchOverlay paramSearchOverlay) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    SearchOverlay.a(a, (ImageView)a.findViewById(2131493402));
    if (!paramBoolean) {}
    do
    {
      return;
      if (paramView == SearchOverlay.a(a))
      {
        SearchOverlay.l(a).setAdapter(SearchOverlay.k(a));
        SearchOverlay.l(a).setOnItemClickListener(a.e);
        if (SearchOverlay.m(a).equals(a.getString(2131165670)))
        {
          paramView = AppData.b().n().c();
          SearchOverlay.b(a).setCompoundDrawablesWithIntrinsicBounds(a.getResources().getDrawable(2130838351), null, null, null);
          SearchOverlay.n(a).a(paramView);
          SearchOverlay.n(a).a(SearchOverlay.b(a).getText().toString());
          SearchOverlay.n(a).filter(SearchOverlay.a(a).getText().toString());
        }
      }
      while (TextUtils.isEmpty(SearchOverlay.b(a).getText())) {
        if (SearchOverlay.b(a).hasFocus())
        {
          SearchOverlay.b(a).setText(SearchOverlay.b(a).getHint());
          SearchOverlay.b(a).selectAll();
          return;
          SearchOverlay.b(a).setCompoundDrawablesWithIntrinsicBounds(a.getResources().getDrawable(2130838350), null, null, null);
          if (SearchOverlay.o(a) != null) {
            SearchOverlay.o(a).cancel(true);
          }
          SearchOverlay.a(a, new as(a, new Geocoder(a)));
          SearchOverlay.o(a).execute(new String[] { SearchOverlay.b(a).getText().toString() });
          continue;
          if (paramView == SearchOverlay.b(a))
          {
            SearchOverlay.p(a).setVisibility(8);
            SearchOverlay.b(a).setNextFocusDownId(2131494023);
            SearchOverlay.l(a).setAdapter(SearchOverlay.j(a));
            SearchOverlay.l(a).setOnItemClickListener(a.f);
          }
        }
        else
        {
          SearchOverlay.b(a).setHint(a.getString(2131165670));
          return;
        }
      }
    } while ((SearchOverlay.b(a).hasFocus()) || (!SearchOverlay.c(a).contains(SearchOverlay.b(a).getText().toString())));
    SearchOverlay.b(a).setHint(SearchOverlay.b(a).getText());
    SearchOverlay.b(a).setText("");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
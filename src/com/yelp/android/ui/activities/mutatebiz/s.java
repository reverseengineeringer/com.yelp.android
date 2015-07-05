package com.yelp.android.ui.activities.mutatebiz;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.Category;
import com.yelp.android.ui.activities.ei;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.ArrayList;

class s
  implements MenuItem.OnMenuItemClickListener
{
  s(EditBusinessCategories paramEditBusinessCategories, Category paramCategory) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    b.q().setAdapter(null);
    if (b.q().getFooterViewsCount() == 0) {
      b.f();
    }
    paramMenuItem = b.getIntent().getParcelableArrayListExtra("extra.categories");
    paramMenuItem.remove(a);
    ei localei = new ei(false);
    localei.a(paramMenuItem);
    b.q().setAdapter(localei);
    EditBusinessCategories.a(b, EventIri.BusinessCategoriesRemoved, String.valueOf(a.getDatabaseId()));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
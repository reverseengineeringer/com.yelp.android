package com.yelp.android.ui.activities.mutatebiz;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.Category;
import com.yelp.android.ui.activities.a;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.ArrayList;

class EditBusinessCategories$1
  implements MenuItem.OnMenuItemClickListener
{
  EditBusinessCategories$1(EditBusinessCategories paramEditBusinessCategories, Category paramCategory) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    b.r().setAdapter(null);
    if (b.r().getFooterViewsCount() == 0) {
      b.f();
    }
    paramMenuItem = b.getIntent().getParcelableArrayListExtra("extra.category");
    paramMenuItem.remove(a);
    a locala = new a(false);
    locala.a(paramMenuItem);
    b.r().setAdapter(locala);
    EditBusinessCategories.a(b, EventIri.BusinessCategoriesRemoved, String.valueOf(a.e()));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.EditBusinessCategories.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
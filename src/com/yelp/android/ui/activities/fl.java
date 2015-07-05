package com.yelp.android.ui.activities;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Category;
import com.yelp.android.ui.activities.nearby.ActivityNearby;

class fl
  implements AdapterView.OnItemClickListener
{
  fl(PickCategory paramPickCategory) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = paramAdapterView.getAdapter().getItem(paramInt);
    if ((paramAdapterView instanceof Category))
    {
      paramView = (Category)paramAdapterView;
      if (paramView.getNumChildren() > 0)
      {
        AppData.a(EventIri.NearbyMoreCategoriesCategory, "category", paramView.getAlias());
        paramAdapterView = new Intent(a.getIntent());
        paramAdapterView.putExtra("category", paramView);
        a.startActivityForResult(paramAdapterView, 101);
      }
    }
    else
    {
      return;
    }
    paramAdapterView = paramView;
    if (TextUtils.isEmpty(paramView.getAlias())) {
      paramAdapterView = null;
    }
    if (PickCategory.a(a))
    {
      AppData.a(EventIri.NearbyMoreCategoriesCategory, "category", paramAdapterView.getAlias());
      a.startActivity(ActivityNearby.a(a, paramAdapterView.getAlias(), paramAdapterView));
      return;
    }
    paramView = new Intent(a.getIntent());
    paramView.putExtra("category", paramAdapterView);
    a.setResult(-1, paramView);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.fl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
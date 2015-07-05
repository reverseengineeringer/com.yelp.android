package com.yelp.android.ui.activities.addphoto;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import java.util.HashMap;

class f
  implements AdapterView.OnItemSelectedListener
{
  f(AddCaptionFragment paramAddCaptionFragment) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = paramAdapterView.getItemAtPosition(paramInt);
    if ((paramAdapterView instanceof CharSequence))
    {
      paramView = new HashMap();
      paramView.put("id", AddCaptionFragment.c(a));
      paramView.put("caption", String.valueOf(paramAdapterView));
      AppData.a(EventIri.BusinessPhotoCaptionSuggested, paramView);
    }
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
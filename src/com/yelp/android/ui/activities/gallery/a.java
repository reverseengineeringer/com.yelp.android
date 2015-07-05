package com.yelp.android.ui.activities.gallery;

import android.support.v4.app.LoaderManager;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class a
  implements AdapterView.OnItemSelectedListener
{
  a(ActivityChooseFromGallery paramActivityChooseFromGallery) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (q)ActivityChooseFromGallery.a(a).getItem(paramInt);
    if (paramAdapterView.equals(q.b))
    {
      AppData.a(EventIri.UploadGalleryChooseSource);
      ActivityChooseFromGallery.b(a);
      return;
    }
    ActivityChooseFromGallery.a(a, c);
    ActivityChooseFromGallery.c(a).restartLoader(0, null, a);
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
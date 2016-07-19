package com.yelp.android.ui.activities.gallery;

import android.support.v4.app.q;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class ActivityChooseFromGallery$2
  implements AdapterView.OnItemSelectedListener
{
  ActivityChooseFromGallery$2(ActivityChooseFromGallery paramActivityChooseFromGallery) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (b.a)ActivityChooseFromGallery.b(a).getItem(paramInt);
    if (paramAdapterView.equals(b.a.b))
    {
      AppData.a(EventIri.UploadGalleryChooseSource);
      ActivityChooseFromGallery.c(a);
    }
    do
    {
      return;
      ActivityChooseFromGallery.a(a, c);
    } while (ActivityChooseFromGallery.d(a) == null);
    ActivityChooseFromGallery.d(a).b(0, null, a);
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.ActivityChooseFromGallery.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
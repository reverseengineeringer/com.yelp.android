package com.yelp.android.ui.activities.photoviewer;

import android.support.v7.widget.ListPopupWindow;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.yelp.android.serializable.Photo;

class v
  implements AdapterView.OnItemClickListener
{
  v(PhotoChrome paramPhotoChrome) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    PhotoChrome.a(a).a();
    if (PhotoChrome.b(a) != null) {
      paramAdapterView = (PhotoChrome.OptionsMenuItem)paramAdapterView.getItemAtPosition(paramInt);
    }
    switch (ac.a[paramAdapterView.a().ordinal()])
    {
    default: 
      return;
    case 1: 
      PhotoChrome.b(a).b(PhotoChrome.c(a));
      return;
    case 2: 
      PhotoChrome.b(a).a(PhotoChrome.c(a));
      return;
    case 3: 
      PhotoChrome.b(a).a((Photo)PhotoChrome.c(a));
      return;
    case 4: 
      PhotoChrome.b(a).c(PhotoChrome.c(a));
      return;
    case 5: 
      PhotoChrome.b(a).a();
      return;
    }
    PhotoChrome.b(a).b((Photo)PhotoChrome.c(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
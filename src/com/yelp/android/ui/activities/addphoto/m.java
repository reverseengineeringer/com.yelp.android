package com.yelp.android.ui.activities.addphoto;

import android.view.View;
import com.yelp.android.analytics.d;
import com.yelp.android.analytics.iris.EventIri;
import java.util.Map;

class m
  extends d
{
  m(PhotoTeaser paramPhotoTeaser, EventIri paramEventIri, Map paramMap)
  {
    super(paramEventIri, paramMap);
  }
  
  public void a(View paramView)
  {
    a.startActivityForResult(AddBusinessPhoto.a(a, PhotoTeaser.a(a), false), 1037);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
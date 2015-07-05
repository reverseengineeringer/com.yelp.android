package com.yelp.android.ui.activities.drawer;

import android.util.Property;
import android.widget.ImageView;

class f
  extends Property<ImageView, Integer>
{
  f(a parama, Class paramClass, String paramString)
  {
    super(paramClass, paramString);
  }
  
  public Integer a(ImageView paramImageView)
  {
    return Integer.valueOf(paramImageView.getHeight());
  }
  
  public void a(ImageView paramImageView, Integer paramInteger)
  {
    getLayoutParamsheight = paramInteger.intValue();
    paramImageView.requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.drawer.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
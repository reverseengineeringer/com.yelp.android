package com.yelp.android.util;

import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Html.ImageGetter;
import com.yelp.android.webimageview.ImageLoader;

final class StringUtils$d
  implements Html.ImageGetter
{
  Resources a;
  int b;
  
  public StringUtils$d(Resources paramResources, int paramInt)
  {
    a = paramResources;
    b = paramInt;
  }
  
  public Drawable getDrawable(String paramString)
  {
    StringUtils.a locala = new StringUtils.a(null);
    locala.a(a.getDrawable(b));
    locala.setBounds(new Rect());
    ImageLoader.start(paramString, new StringUtils.a.a(locala), false);
    return locala;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.StringUtils.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.yelp.android.util;

import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Html.ImageGetter;
import com.yelp.android.webimageview.ImageLoader;

final class ah
  implements Html.ImageGetter
{
  Resources a;
  int b;
  
  public ah(Resources paramResources, int paramInt)
  {
    a = paramResources;
    b = paramInt;
  }
  
  public Drawable getDrawable(String paramString)
  {
    ac localac = new ac(null);
    localac.a(a.getDrawable(b));
    localac.setBounds(new Rect());
    ImageLoader.start(paramString, new ad(localac), false);
    return localac;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
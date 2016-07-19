package com.yelp.android.ui.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v4.app.Fragment;

public abstract class t
{
  private static a b;
  protected Context a;
  
  public t(Context paramContext)
  {
    a = paramContext;
  }
  
  public static Uri a(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getResources();
    return Uri.parse("android.resource://" + paramContext.getResourcePackageName(paramInt) + '/' + paramContext.getResourceTypeName(paramInt) + '/' + paramContext.getResourceEntryName(paramInt));
  }
  
  public static t a(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("Context cannot be null.");
    }
    return c().a(paramContext);
  }
  
  public static t a(Fragment paramFragment)
  {
    return c().a(paramFragment.getActivity());
  }
  
  private static a c()
  {
    if (b == null) {
      b = new o.a();
    }
    return b;
  }
  
  public abstract u.a a(Uri paramUri);
  
  public u.a a(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    paramString = str;
    if (!str.isEmpty())
    {
      paramString = str;
      if (Uri.parse(str).getScheme() == null) {
        paramString = "file://" + str;
      }
    }
    return a(Uri.parse(paramString));
  }
  
  public abstract void a();
  
  public abstract void a(int paramInt);
  
  protected abstract void a(u paramu);
  
  public Context b()
  {
    return a;
  }
  
  public static abstract interface a
  {
    public abstract t a(Context paramContext);
  }
  
  public static abstract interface b
  {
    public abstract void a(Drawable paramDrawable);
  }
  
  public static abstract interface c
  {
    public abstract void a(Bitmap paramBitmap);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
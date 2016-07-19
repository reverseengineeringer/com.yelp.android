package pl.droidsonroids.gif;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class e
{
  static final List<String> a = Arrays.asList(new String[] { "raw", "drawable", "mipmap" });
  
  static float a(Resources paramResources, int paramInt)
  {
    TypedValue localTypedValue = new TypedValue();
    paramResources.getValue(paramInt, localTypedValue, true);
    int i = density;
    if (i == 0) {
      paramInt = 160;
    }
    for (;;)
    {
      i = getDisplayMetricsdensityDpi;
      if ((paramInt <= 0) || (i <= 0)) {
        break;
      }
      return i / paramInt;
      paramInt = i;
      if (i == 65535) {
        paramInt = 0;
      }
    }
    return 1.0F;
  }
  
  private static int a(ImageView paramImageView, AttributeSet paramAttributeSet, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "src";; str = "background")
    {
      int i = paramAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", str, 0);
      if (i <= 0) {
        break;
      }
      paramAttributeSet = paramImageView.getResources().getResourceTypeName(i);
      if ((!a.contains(paramAttributeSet)) || (a(paramImageView, paramBoolean, i))) {
        break;
      }
      return i;
    }
    return 0;
  }
  
  static a a(ImageView paramImageView, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    if ((paramAttributeSet != null) && (!paramImageView.isInEditMode())) {
      return new a(a(paramImageView, paramAttributeSet, true), a(paramImageView, paramAttributeSet, false), a(paramImageView, paramAttributeSet, paramInt1, paramInt2));
    }
    return new a(0, 0, false);
  }
  
  static boolean a(View paramView, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    paramView = paramView.getContext().obtainStyledAttributes(paramAttributeSet, i.a.GifView, paramInt1, paramInt2);
    boolean bool = paramView.getBoolean(i.a.GifView_freezesAnimation, false);
    paramView.recycle();
    return bool;
  }
  
  static boolean a(ImageView paramImageView, Uri paramUri)
  {
    if (paramUri != null) {
      try
      {
        paramImageView.setImageDrawable(new c(paramImageView.getContext().getContentResolver(), paramUri));
        return true;
      }
      catch (IOException paramImageView) {}
    }
    return false;
  }
  
  static boolean a(ImageView paramImageView, boolean paramBoolean, int paramInt)
  {
    Object localObject = paramImageView.getResources();
    if (localObject != null) {
      try
      {
        try
        {
          localObject = new c((Resources)localObject, paramInt);
          if (paramBoolean) {
            paramImageView.setImageDrawable((Drawable)localObject);
          } else if (Build.VERSION.SDK_INT >= 16) {
            paramImageView.setBackground((Drawable)localObject);
          } else {
            paramImageView.setBackgroundDrawable((Drawable)localObject);
          }
        }
        catch (Resources.NotFoundException paramImageView)
        {
          break label62;
        }
        return true;
      }
      catch (IOException paramImageView) {}
    }
    label62:
    return false;
  }
  
  static class a
  {
    final int a;
    final int b;
    final boolean c;
    
    a(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      a = paramInt1;
      b = paramInt2;
      c = paramBoolean;
    }
  }
}

/* Location:
 * Qualified Name:     pl.droidsonroids.gif.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
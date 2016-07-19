package com.yelp.android.ui.util;

import android.text.Spanned;
import android.view.View;
import android.widget.ImageView;
import android.widget.SimpleAdapter.ViewBinder;
import android.widget.TextView;
import com.yelp.android.ui.widgets.WebImageView;

public class aw
  implements SimpleAdapter.ViewBinder
{
  private int a;
  
  public aw(int paramInt)
  {
    a = paramInt;
  }
  
  public boolean setViewValue(View paramView, Object paramObject, String paramString)
  {
    if ((paramView instanceof WebImageView))
    {
      ((WebImageView)paramView).setImageUrl(paramString, a);
      return true;
    }
    if (((paramView instanceof ImageView)) && ((paramObject instanceof Double)))
    {
      ar.a((ImageView)paramView, ((Double)paramObject).floatValue());
      return true;
    }
    if (((paramView instanceof TextView)) && ((paramObject instanceof Spanned)))
    {
      ((TextView)paramView).setText((Spanned)paramObject);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
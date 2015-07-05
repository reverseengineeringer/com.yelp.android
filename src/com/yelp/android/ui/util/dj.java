package com.yelp.android.ui.util;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.bf.m;
import com.yelp.android.util.YelpLog;

public class dj
{
  private static void a(View paramView, Context paramContext, TypedArray paramTypedArray)
  {
    paramContext = paramView.getBackground();
    String str = paramTypedArray.getString(3);
    if ((paramContext == null) && (!TextUtils.isEmpty(str))) {}
    try
    {
      paramContext = (Drawable)Drawable.class.cast(Class.forName(str).newInstance());
      if (paramContext != null) {
        paramView.setBackgroundDrawable(paramContext);
      }
    }
    catch (IllegalAccessException paramContext)
    {
      for (;;)
      {
        int i;
        YelpLog.e("YelpViewMaker", "We got an access violation looking up the drawable Class", paramContext);
      }
    }
    catch (InstantiationException paramContext)
    {
      for (;;)
      {
        YelpLog.e("YelpViewMaker", "Could not instaniate Drawable Class", paramContext);
      }
    }
    catch (ClassNotFoundException paramContext)
    {
      for (;;)
      {
        YelpLog.e("YelpViewMaker", "Could not find Drawable Class", paramContext);
      }
    }
    if (paramTypedArray.getValue(5, new TypedValue()))
    {
      i = paramTypedArray.getColor(5, 0);
      paramContext = android.graphics.PorterDuff.Mode.values()[paramTypedArray.getInt(6, 0)];
      paramView.getBackground().setColorFilter(i, paramContext);
    }
  }
  
  public static void a(ViewGroup paramViewGroup, Context paramContext, AttributeSet paramAttributeSet, int paramInt, SparseIntArray paramSparseIntArray)
  {
    paramAttributeSet = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, m.YelpView, paramInt, paramInt);
    paramInt = paramAttributeSet.getResourceId(4, paramSparseIntArray.get(4));
    LayoutInflater.from(paramContext).inflate(paramInt, paramViewGroup);
    a(paramViewGroup, paramContext, paramAttributeSet);
    paramAttributeSet.recycle();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.dj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
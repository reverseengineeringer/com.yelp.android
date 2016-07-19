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
import com.yelp.android.co.a.l;
import com.yelp.android.util.YelpLog;

public class ay
{
  private static void a(View paramView, TypedArray paramTypedArray)
  {
    Object localObject = paramView.getBackground();
    String str = paramTypedArray.getString(a.l.YelpView_backgroundDrawableClass);
    if ((localObject == null) && (!TextUtils.isEmpty(str))) {}
    try
    {
      localObject = (Drawable)Drawable.class.cast(Class.forName(str).newInstance());
      if (localObject != null) {
        paramView.setBackgroundDrawable((Drawable)localObject);
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;)
      {
        int i;
        YelpLog.e("YelpViewMaker", "We got an access violation looking up the drawable Class", localIllegalAccessException);
      }
    }
    catch (InstantiationException localInstantiationException)
    {
      for (;;)
      {
        YelpLog.e("YelpViewMaker", "Could not instaniate Drawable Class", localInstantiationException);
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        YelpLog.e("YelpViewMaker", "Could not find Drawable Class", localClassNotFoundException);
      }
    }
    localObject = new TypedValue();
    if (paramTypedArray.getValue(a.l.YelpView_backgroundColorFilter_color, (TypedValue)localObject))
    {
      i = paramTypedArray.getColor(a.l.YelpView_backgroundColorFilter_color, 0);
      paramTypedArray = android.graphics.PorterDuff.Mode.values()[paramTypedArray.getInt(a.l.YelpView_backgroundColorFilter_mode, 0)];
      paramView.getBackground().setColorFilter(i, paramTypedArray);
    }
  }
  
  public static void a(ViewGroup paramViewGroup, Context paramContext, AttributeSet paramAttributeSet, int paramInt, SparseIntArray paramSparseIntArray)
  {
    paramAttributeSet = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, a.l.YelpView, paramInt, paramInt);
    paramInt = a.l.YelpView_yelpLayout;
    paramInt = paramAttributeSet.getResourceId(paramInt, paramSparseIntArray.get(paramInt));
    LayoutInflater.from(paramContext).inflate(paramInt, paramViewGroup);
    a(paramViewGroup, paramAttributeSet);
    paramAttributeSet.recycle();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
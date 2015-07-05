package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.b;
import com.yelp.android.ui.util.dj;

public class AwardBanner
  extends RelativeLayout
{
  public AwardBanner(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AwardBanner(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    SparseIntArray localSparseIntArray = new SparseIntArray();
    localSparseIntArray.put(4, 2130903125);
    dj.a(this, paramContext, paramAttributeSet, paramInt, localSparseIntArray);
    paramContext = getContext().obtainStyledAttributes(paramAttributeSet, b.AwardBanner, paramInt, paramInt);
    paramInt = paramContext.getColor(2, 2131361808);
    paramAttributeSet = (TextView)findViewById(2131493327);
    paramAttributeSet.setTextColor(paramInt);
    paramAttributeSet.setText(paramContext.getString(0));
    paramAttributeSet = (TextView)findViewById(2131493328);
    paramAttributeSet.setText(paramContext.getString(1));
    paramAttributeSet.setTextColor(paramInt);
    ((ImageView)findViewById(2131493329)).setImageResource(paramContext.getResourceId(4, 0));
    findViewById(2131493326).setBackgroundResource(paramContext.getResourceId(3, 0));
    paramContext.recycle();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.AwardBanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
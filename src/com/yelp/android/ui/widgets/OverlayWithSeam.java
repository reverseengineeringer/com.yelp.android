package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewStub;
import android.widget.FrameLayout;
import com.yelp.android.appdata.n;
import com.yelp.android.b;
import com.yelp.android.ui.util.dj;

public class OverlayWithSeam
  extends FrameLayout
{
  private final View a;
  
  public OverlayWithSeam(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public OverlayWithSeam(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772103);
  }
  
  public OverlayWithSeam(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    SparseIntArray localSparseIntArray = new SparseIntArray();
    localSparseIntArray.put(4, 2130903338);
    dj.a(this, paramContext, paramAttributeSet, paramInt, localSparseIntArray);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, b.OverlayWithSeam, paramInt, paramInt);
    a = findViewById(2131493903);
    paramAttributeSet = paramContext.getDrawable(4);
    if (paramAttributeSet != null) {
      a.findViewById(2131493050).setBackgroundDrawable(paramAttributeSet);
    }
    a.findViewById(2131493905).setBackgroundDrawable(paramContext.getDrawable(1));
    a.findViewById(2131493904).setBackgroundDrawable(paramContext.getDrawable(2));
    paramAttributeSet = (ViewStub)findViewById(2131493906);
    paramInt = paramContext.getResourceId(3, 0);
    if (paramInt != 0)
    {
      paramAttributeSet.setLayoutResource(paramInt);
      paramAttributeSet.inflate();
    }
    paramContext.recycle();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((n.b(11)) && (a != null))
    {
      paramInt2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
      a.measure(paramInt1, paramInt2);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.OverlayWithSeam
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
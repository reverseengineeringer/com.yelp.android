package com.yelp.android.ui.activities.deals;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.b;
import com.yelp.android.ui.util.dj;
import com.yelp.android.ui.widgets.QuantityDropDownView;
import com.yelp.android.ui.widgets.s;

public abstract class DealQuantityViewBase
  extends RelativeLayout
  implements s
{
  protected final TextView a;
  private final QuantityDropDownView b;
  
  public DealQuantityViewBase(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    SparseIntArray localSparseIntArray = new SparseIntArray();
    localSparseIntArray.put(4, 2130903181);
    dj.a(this, paramContext, paramAttributeSet, paramInt, localSparseIntArray);
    b = ((QuantityDropDownView)findViewById(2131493458));
    b.setQuantityChangeListener(this);
    a = ((TextView)findViewById(2131493459));
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, b.QuantityDropDownView, paramInt, paramInt);
    b.setStartRange(paramContext.getInt(1, Integer.MIN_VALUE));
    b.setEndRange(paramContext.getInt(2, Integer.MAX_VALUE));
    paramContext.recycle();
    setEnabled(isEnabled());
  }
  
  public void a(int paramInt, QuantityDropDownView paramQuantityDropDownView) {}
  
  public int getQuantity()
  {
    Integer localInteger = b.getQuantity();
    if (localInteger == null) {
      return 0;
    }
    return localInteger.intValue();
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    b.setEnabled(paramBoolean);
    QuantityDropDownView localQuantityDropDownView = b;
    if (paramBoolean) {}
    for (int i = getVisibility();; i = 4)
    {
      localQuantityDropDownView.setVisibility(i);
      forceLayout();
      return;
    }
  }
  
  public void setQuantity(int paramInt)
  {
    b.setQuantity(paramInt);
  }
  
  public void setQuantityListener(s params)
  {
    if (params == null)
    {
      b.setQuantityChangeListener(this);
      return;
    }
    b.setQuantityChangeListener(new ae(new s[] { this, params }));
  }
  
  public void setText(CharSequence paramCharSequence)
  {
    a.setText(paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.DealQuantityViewBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
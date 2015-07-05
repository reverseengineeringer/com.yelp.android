package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;

public class LeftDrawableButton
  extends RelativeLayout
{
  private TextView a;
  private ImageView b;
  
  public LeftDrawableButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet, 0);
  }
  
  public LeftDrawableButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    a = new TextView(paramContext, paramAttributeSet);
    a.setId(2131492895);
    b = new ImageView(paramContext, paramAttributeSet);
    b.setId(2131492894);
    if (getBackground() == null) {
      setBackgroundResource(2130837714);
    }
    setGravity(17);
    paramContext = new RelativeLayout.LayoutParams(-2, -2);
    b.setPadding(0, 0, 0, 0);
    b.setBackgroundResource(0);
    b.setClickable(false);
    paramAttributeSet = new RelativeLayout.LayoutParams(-2, -2);
    paramAttributeSet.addRule(1, b.getId());
    paramAttributeSet.addRule(6, b.getId());
    paramAttributeSet.addRule(8, b.getId());
    a.setBackgroundResource(0);
    a.setGravity(16);
    a.setSingleLine();
    a.setPadding(a.getCompoundDrawablePadding(), 0, 0, 0);
    a.setClickable(false);
    addView(a, paramAttributeSet);
    addView(b, paramContext);
  }
  
  public void setImage(int paramInt)
  {
    b.setImageDrawable(getResources().getDrawable(paramInt));
  }
  
  public void setText(String paramString)
  {
    a.setText(paramString);
  }
  
  public void setTextColor(int paramInt)
  {
    a.setTextColor(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.LeftDrawableButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.yelp.android.ui.panels.businesspage;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yelp.android.b;

public class PanelLabelValue
  extends LinearLayout
{
  private TextView a;
  private TextView b;
  
  public PanelLabelValue(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(2130903319, this, true);
    a = ((TextView)findViewById(2131493869));
    b = ((TextView)findViewById(2131493868));
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, b.PanelLabelValue);
    paramAttributeSet = paramContext.getString(0);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      b.setText(paramAttributeSet);
    }
    paramAttributeSet = paramContext.getText(1);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      a.setText(paramAttributeSet);
    }
    paramContext.recycle();
  }
  
  public void setValue(CharSequence paramCharSequence)
  {
    a.setText(paramCharSequence);
  }
  
  public void setValueOnClickListener(View.OnClickListener paramOnClickListener)
  {
    a.setOnClickListener(paramOnClickListener);
    a.setClickable(true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesspage.PanelLabelValue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
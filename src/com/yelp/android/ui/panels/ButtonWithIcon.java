package com.yelp.android.ui.panels;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.widget.TextView;
import com.yelp.android.b.a;
import com.yelp.android.ui.util.SlightlyLessBrokenLinearLayout;
import com.yelp.android.ui.util.ay;
import com.yelp.android.ui.widgets.WebImageView;

public class ButtonWithIcon
  extends SlightlyLessBrokenLinearLayout
{
  private final WebImageView a;
  private final TextView b;
  
  public ButtonWithIcon(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ButtonWithIcon(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772446);
  }
  
  public ButtonWithIcon(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Object localObject = new SparseIntArray();
    ((SparseIntArray)localObject).append(4, 2130903388);
    ay.a(this, paramContext, paramAttributeSet, paramInt, (SparseIntArray)localObject);
    a = ((WebImageView)findViewById(2131689637));
    b = ((TextView)findViewById(2131689711));
    localObject = paramContext.obtainStyledAttributes(paramAttributeSet, b.a.PanelLabelValue, paramInt, paramInt);
    b.setText(((TypedArray)localObject).getText(0));
    ((TypedArray)localObject).recycle();
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, b.a.WebImageView, paramInt, paramInt);
    a.applyTypedArray(paramContext);
    paramContext.recycle();
  }
  
  public WebImageView getImageView()
  {
    return a;
  }
  
  public TextView getTextView()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.ButtonWithIcon
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
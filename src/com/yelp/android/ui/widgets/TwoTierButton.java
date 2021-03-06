package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.widget.Checkable;
import android.widget.TextView;
import com.yelp.android.b.a;
import com.yelp.android.ui.util.SlightlyLessBrokenLinearLayout;
import com.yelp.android.ui.util.ay;

public class TwoTierButton
  extends SlightlyLessBrokenLinearLayout
  implements Checkable, SpannableWidget
{
  private final SpannableWidget.SpannableWidgetUtil a;
  private final TextView b;
  private final TextView c;
  private TwoTierButton.a i;
  
  public TwoTierButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TwoTierButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772431);
  }
  
  public TwoTierButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Object localObject = new SparseIntArray();
    ((SparseIntArray)localObject).put(4, 2130903481);
    ay.a(this, paramContext, paramAttributeSet, paramInt, (SparseIntArray)localObject);
    localObject = paramContext.obtainStyledAttributes(paramAttributeSet, b.a.PanelLabelValue, paramInt, paramInt);
    a = new SpannableWidget.SpannableWidgetUtil(paramContext, paramAttributeSet, paramInt);
    b = ((TextView)findViewById(2131690705));
    c = ((TextView)findViewById(2131690706));
    setLabel(((TypedArray)localObject).getText(0));
    setValue(((TypedArray)localObject).getText(1));
    c.setCompoundDrawablesWithIntrinsicBounds(((TypedArray)localObject).getResourceId(2, 0), 0, 0, 0);
    if (((TypedArray)localObject).getBoolean(3, false)) {
      c.setCompoundDrawablePadding(0);
    }
    ((TypedArray)localObject).recycle();
  }
  
  protected void drawableStateChanged()
  {
    if (i != null) {
      i.a(this, getDrawableState());
    }
    Drawable[] arrayOfDrawable = c.getCompoundDrawables();
    if (arrayOfDrawable != null)
    {
      int k = arrayOfDrawable.length;
      int j = 0;
      while (j < k)
      {
        Drawable localDrawable = arrayOfDrawable[j];
        if (localDrawable != null)
        {
          localDrawable.setState(getDrawableState());
          localDrawable.invalidateSelf();
        }
        j += 1;
      }
    }
    super.drawableStateChanged();
  }
  
  public TextView getLabel()
  {
    return b;
  }
  
  public TextView getValue()
  {
    return c;
  }
  
  public boolean isChecked()
  {
    return a.a();
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    if (a == null) {
      return super.onCreateDrawableState(paramInt);
    }
    int[] arrayOfInt1 = a.a(this);
    int[] arrayOfInt2 = super.onCreateDrawableState(arrayOfInt1.length + paramInt);
    mergeDrawableStates(arrayOfInt2, arrayOfInt1);
    return arrayOfInt2;
  }
  
  public void setButtonStateChangedListener(TwoTierButton.a parama)
  {
    i = parama;
  }
  
  public void setChecked(boolean paramBoolean)
  {
    a.a(this, paramBoolean);
  }
  
  public void setClickable(boolean paramBoolean)
  {
    boolean bool = isClickable();
    super.setClickable(paramBoolean);
    if (bool != isClickable()) {
      refreshDrawableState();
    }
  }
  
  public void setDrawable(int paramInt)
  {
    c.setCompoundDrawablesWithIntrinsicBounds(paramInt, 0, 0, 0);
  }
  
  public void setLabel(CharSequence paramCharSequence)
  {
    b.setText(paramCharSequence);
  }
  
  public void setLeft(boolean paramBoolean)
  {
    a.setLeft(paramBoolean);
  }
  
  public void setMiddle(boolean paramBoolean)
  {
    a.setMiddle(paramBoolean);
  }
  
  public void setOnCheckedChangeListener(c paramc)
  {
    a.a(paramc);
    refreshDrawableState();
  }
  
  public void setRight(boolean paramBoolean)
  {
    a.setRight(paramBoolean);
  }
  
  public void setValue(CharSequence paramCharSequence)
  {
    c.setText(paramCharSequence);
  }
  
  public void toggle()
  {
    a.c(this);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.TwoTierButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
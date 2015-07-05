package android.support.v7.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.MultiAutoCompleteTextView;

public class TintMultiAutoCompleteTextView
  extends MultiAutoCompleteTextView
{
  private static final int[] a = { 16842964, 16843126 };
  private final bd b;
  
  public TintMultiAutoCompleteTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842859);
  }
  
  public TintMultiAutoCompleteTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = bg.a(paramContext, paramAttributeSet, a, paramInt, 0);
    setBackgroundDrawable(paramContext.a(0));
    if (paramContext.d(1)) {
      setDropDownBackgroundDrawable(paramContext.a(1));
    }
    paramContext.b();
    b = paramContext.c();
  }
  
  public void setDropDownBackgroundResource(int paramInt)
  {
    setDropDownBackgroundDrawable(b.a(paramInt));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.TintMultiAutoCompleteTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
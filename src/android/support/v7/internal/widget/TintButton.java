package android.support.v7.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;

public class TintButton
  extends Button
{
  private static final int[] a = { 16842964, 16842804 };
  private final bd b;
  
  public TintButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842824);
  }
  
  public TintButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = bg.a(paramContext, paramAttributeSet, a, paramInt, 0);
    if (paramContext.d(0)) {
      setBackgroundDrawable(paramContext.a(0));
    }
    b = paramContext.c();
  }
  
  public void setBackgroundResource(int paramInt)
  {
    setBackgroundDrawable(b.a(paramInt));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.TintButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
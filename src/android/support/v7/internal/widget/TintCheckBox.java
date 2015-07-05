package android.support.v7.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.CheckBox;

public class TintCheckBox
  extends CheckBox
{
  private static final int[] a = { 16843015 };
  private final bd b;
  
  public TintCheckBox(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842860);
  }
  
  public TintCheckBox(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = bg.a(paramContext, paramAttributeSet, a, paramInt, 0);
    setButtonDrawable(paramContext.a(0));
    paramContext.b();
    b = paramContext.c();
  }
  
  public void setButtonDrawable(int paramInt)
  {
    setButtonDrawable(b.a(paramInt));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.TintCheckBox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
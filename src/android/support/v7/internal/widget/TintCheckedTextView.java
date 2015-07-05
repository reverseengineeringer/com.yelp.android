package android.support.v7.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.CheckedTextView;

public class TintCheckedTextView
  extends CheckedTextView
{
  private static final int[] a = { 16843016 };
  private final bd b;
  
  public TintCheckedTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16843720);
  }
  
  public TintCheckedTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = bg.a(paramContext, paramAttributeSet, a, paramInt, 0);
    setCheckMarkDrawable(paramContext.a(0));
    paramContext.b();
    b = paramContext.c();
  }
  
  public void setCheckMarkDrawable(int paramInt)
  {
    setCheckMarkDrawable(b.a(paramInt));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.TintCheckedTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
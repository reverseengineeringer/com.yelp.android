package android.support.v7.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

public class TintImageView
  extends ImageView
{
  private static final int[] a = { 16842964, 16843033 };
  private final o b;
  
  public TintImageView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TintImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public TintImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = p.a(getContext(), paramAttributeSet, a, paramInt, 0);
    if (paramContext.a() > 0)
    {
      if (paramContext.e(0)) {
        setBackgroundDrawable(paramContext.a(0));
      }
      if (paramContext.e(1)) {
        setImageDrawable(paramContext.a(1));
      }
    }
    paramContext.b();
    b = paramContext.c();
  }
  
  public void setImageResource(int paramInt)
  {
    setImageDrawable(b.a(paramInt));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.TintImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
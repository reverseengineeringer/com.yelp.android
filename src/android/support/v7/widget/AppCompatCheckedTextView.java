package android.support.v7.widget;

import android.content.Context;
import android.support.v7.internal.widget.o;
import android.support.v7.internal.widget.p;
import android.util.AttributeSet;
import android.widget.CheckedTextView;

public class AppCompatCheckedTextView
  extends CheckedTextView
{
  private static final int[] a = { 16843016 };
  private o b;
  
  public AppCompatCheckedTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16843720);
  }
  
  public AppCompatCheckedTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (o.a)
    {
      paramContext = p.a(getContext(), paramAttributeSet, a, paramInt, 0);
      setCheckMarkDrawable(paramContext.a(0));
      paramContext.b();
      b = paramContext.c();
    }
  }
  
  public void setCheckMarkDrawable(int paramInt)
  {
    if (b != null)
    {
      setCheckMarkDrawable(b.a(paramInt));
      return;
    }
    super.setCheckMarkDrawable(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.AppCompatCheckedTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
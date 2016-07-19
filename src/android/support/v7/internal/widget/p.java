package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;

public class p
{
  private final Context a;
  private final TypedArray b;
  private o c;
  
  private p(Context paramContext, TypedArray paramTypedArray)
  {
    a = paramContext;
    b = paramTypedArray;
  }
  
  public static p a(Context paramContext, AttributeSet paramAttributeSet, int[] paramArrayOfInt)
  {
    return new p(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt));
  }
  
  public static p a(Context paramContext, AttributeSet paramAttributeSet, int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    return new p(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt, paramInt1, paramInt2));
  }
  
  public float a(int paramInt, float paramFloat)
  {
    return b.getFloat(paramInt, paramFloat);
  }
  
  public int a()
  {
    return b.length();
  }
  
  public int a(int paramInt1, int paramInt2)
  {
    return b.getInt(paramInt1, paramInt2);
  }
  
  public Drawable a(int paramInt)
  {
    if (b.hasValue(paramInt))
    {
      int i = b.getResourceId(paramInt, 0);
      if (i != 0) {
        return c().a(i);
      }
    }
    return b.getDrawable(paramInt);
  }
  
  public boolean a(int paramInt, boolean paramBoolean)
  {
    return b.getBoolean(paramInt, paramBoolean);
  }
  
  public int b(int paramInt1, int paramInt2)
  {
    return b.getColor(paramInt1, paramInt2);
  }
  
  public Drawable b(int paramInt)
  {
    if (b.hasValue(paramInt))
    {
      paramInt = b.getResourceId(paramInt, 0);
      if (paramInt != 0) {
        return c().a(paramInt, true);
      }
    }
    return null;
  }
  
  public void b()
  {
    b.recycle();
  }
  
  public int c(int paramInt1, int paramInt2)
  {
    return b.getInteger(paramInt1, paramInt2);
  }
  
  public o c()
  {
    if (c == null) {
      c = o.a(a);
    }
    return c;
  }
  
  public CharSequence c(int paramInt)
  {
    return b.getText(paramInt);
  }
  
  public int d(int paramInt1, int paramInt2)
  {
    return b.getDimensionPixelOffset(paramInt1, paramInt2);
  }
  
  public String d(int paramInt)
  {
    return b.getString(paramInt);
  }
  
  public int e(int paramInt1, int paramInt2)
  {
    return b.getDimensionPixelSize(paramInt1, paramInt2);
  }
  
  public boolean e(int paramInt)
  {
    return b.hasValue(paramInt);
  }
  
  public int f(int paramInt1, int paramInt2)
  {
    return b.getLayoutDimension(paramInt1, paramInt2);
  }
  
  public int g(int paramInt1, int paramInt2)
  {
    return b.getResourceId(paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
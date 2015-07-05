package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;

public class bg
{
  private final Context a;
  private final TypedArray b;
  private bd c;
  
  private bg(Context paramContext, TypedArray paramTypedArray)
  {
    a = paramContext;
    b = paramTypedArray;
  }
  
  public static bg a(Context paramContext, AttributeSet paramAttributeSet, int[] paramArrayOfInt)
  {
    return new bg(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt));
  }
  
  public static bg a(Context paramContext, AttributeSet paramAttributeSet, int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    return new bg(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt, paramInt1, paramInt2));
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
    return b.getInteger(paramInt1, paramInt2);
  }
  
  public CharSequence b(int paramInt)
  {
    return b.getText(paramInt);
  }
  
  public void b()
  {
    b.recycle();
  }
  
  public int c(int paramInt1, int paramInt2)
  {
    return b.getDimensionPixelOffset(paramInt1, paramInt2);
  }
  
  public bd c()
  {
    if (c == null) {
      c = new bd(a);
    }
    return c;
  }
  
  public String c(int paramInt)
  {
    return b.getString(paramInt);
  }
  
  public int d(int paramInt1, int paramInt2)
  {
    return b.getDimensionPixelSize(paramInt1, paramInt2);
  }
  
  public boolean d(int paramInt)
  {
    return b.hasValue(paramInt);
  }
  
  public int e(int paramInt1, int paramInt2)
  {
    return b.getLayoutDimension(paramInt1, paramInt2);
  }
  
  public int f(int paramInt1, int paramInt2)
  {
    return b.getResourceId(paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
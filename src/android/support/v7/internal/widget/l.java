package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.TypedValue;
import com.yelp.android.c.a;

public class l
{
  static final int[] a = { -16842910 };
  static final int[] b = { 16842908 };
  static final int[] c = { 16843518 };
  static final int[] d = { 16842919 };
  static final int[] e = { 16842912 };
  static final int[] f = { 16842913 };
  static final int[] g = { -16842919, -16842908 };
  static final int[] h = new int[0];
  private static final ThreadLocal<TypedValue> i = new ThreadLocal();
  private static final int[] j = new int[1];
  
  public static int a(Context paramContext, int paramInt)
  {
    j[0] = paramInt;
    paramContext = paramContext.obtainStyledAttributes(null, j);
    try
    {
      paramInt = paramContext.getColor(0, 0);
      return paramInt;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  static int a(Context paramContext, int paramInt, float paramFloat)
  {
    paramInt = a(paramContext, paramInt);
    return a.b(paramInt, Math.round(Color.alpha(paramInt) * paramFloat));
  }
  
  public static ColorStateList a(int paramInt1, int paramInt2)
  {
    return new ColorStateList(new int[][] { a, h }, new int[] { paramInt2, paramInt1 });
  }
  
  private static TypedValue a()
  {
    TypedValue localTypedValue2 = (TypedValue)i.get();
    TypedValue localTypedValue1 = localTypedValue2;
    if (localTypedValue2 == null)
    {
      localTypedValue1 = new TypedValue();
      i.set(localTypedValue1);
    }
    return localTypedValue1;
  }
  
  public static ColorStateList b(Context paramContext, int paramInt)
  {
    j[0] = paramInt;
    paramContext = paramContext.obtainStyledAttributes(null, j);
    try
    {
      ColorStateList localColorStateList = paramContext.getColorStateList(0);
      return localColorStateList;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  public static int c(Context paramContext, int paramInt)
  {
    Object localObject = b(paramContext, paramInt);
    if ((localObject != null) && (((ColorStateList)localObject).isStateful())) {
      return ((ColorStateList)localObject).getColorForState(a, ((ColorStateList)localObject).getDefaultColor());
    }
    localObject = a();
    paramContext.getTheme().resolveAttribute(16842803, (TypedValue)localObject, true);
    return a(paramContext, paramInt, ((TypedValue)localObject).getFloat());
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
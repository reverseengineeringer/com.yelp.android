package com.google.android.gms.ads.internal.formats;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import com.google.android.gms.internal.fv;
import java.util.List;

@fv
public class a
{
  static final int a = d;
  static final int b = c;
  private static final int c = Color.rgb(12, 174, 206);
  private static final int d = Color.rgb(204, 204, 204);
  private final String e;
  private final List<Drawable> f;
  private final int g;
  private final int h;
  private final int i;
  private final int j;
  
  public a(String paramString, List<Drawable> paramList, Integer paramInteger1, Integer paramInteger2, Integer paramInteger3, int paramInt)
  {
    e = paramString;
    f = paramList;
    if (paramInteger1 != null)
    {
      k = paramInteger1.intValue();
      g = k;
      if (paramInteger2 == null) {
        break label81;
      }
      k = paramInteger2.intValue();
      label42:
      h = k;
      if (paramInteger3 == null) {
        break label89;
      }
    }
    label81:
    label89:
    for (int k = paramInteger3.intValue();; k = 12)
    {
      i = k;
      j = paramInt;
      return;
      k = a;
      break;
      k = b;
      break label42;
    }
  }
  
  public String a()
  {
    return e;
  }
  
  public List<Drawable> b()
  {
    return f;
  }
  
  public int c()
  {
    return g;
  }
  
  public int d()
  {
    return h;
  }
  
  public int e()
  {
    return i;
  }
  
  public int f()
  {
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
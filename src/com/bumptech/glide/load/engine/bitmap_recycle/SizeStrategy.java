package com.bumptech.glide.load.engine.bitmap_recycle;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import com.yelp.android.ai.f;
import java.util.TreeMap;

@TargetApi(19)
class SizeStrategy
  implements m
{
  private final q a = new q();
  private final g<p, Bitmap> b = new g();
  private final TreeMap<Integer, Integer> c = new SizeStrategy.PrettyPrintTreeMap(null);
  
  private void a(Integer paramInteger)
  {
    Integer localInteger = (Integer)c.get(paramInteger);
    if (localInteger.intValue() == 1)
    {
      c.remove(paramInteger);
      return;
    }
    c.put(paramInteger, Integer.valueOf(localInteger.intValue() - 1));
  }
  
  private static String b(int paramInt)
  {
    return "[" + paramInt + "]";
  }
  
  private static String d(Bitmap paramBitmap)
  {
    return b(f.a(paramBitmap));
  }
  
  public Bitmap a()
  {
    Bitmap localBitmap = (Bitmap)b.a();
    if (localBitmap != null) {
      a(Integer.valueOf(f.a(localBitmap)));
    }
    return localBitmap;
  }
  
  public Bitmap a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    int i = f.a(paramInt1, paramInt2, paramConfig);
    p localp = a.a(i);
    Integer localInteger = (Integer)c.ceilingKey(Integer.valueOf(i));
    Object localObject = localp;
    if (localInteger != null)
    {
      localObject = localp;
      if (localInteger.intValue() != i)
      {
        localObject = localp;
        if (localInteger.intValue() <= i * 8)
        {
          a.a(localp);
          localObject = a.a(localInteger.intValue());
        }
      }
    }
    localObject = (Bitmap)b.a((n)localObject);
    if (localObject != null)
    {
      ((Bitmap)localObject).reconfigure(paramInt1, paramInt2, paramConfig);
      a(localInteger);
    }
    return (Bitmap)localObject;
  }
  
  public void a(Bitmap paramBitmap)
  {
    int i = f.a(paramBitmap);
    p localp = a.a(i);
    b.a(localp, paramBitmap);
    paramBitmap = (Integer)c.get(Integer.valueOf(p.a(localp)));
    TreeMap localTreeMap = c;
    int j = p.a(localp);
    if (paramBitmap == null) {}
    for (i = 1;; i = paramBitmap.intValue() + 1)
    {
      localTreeMap.put(Integer.valueOf(j), Integer.valueOf(i));
      return;
    }
  }
  
  public String b(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return b(f.a(paramInt1, paramInt2, paramConfig));
  }
  
  public String b(Bitmap paramBitmap)
  {
    return d(paramBitmap);
  }
  
  public int c(Bitmap paramBitmap)
  {
    return f.a(paramBitmap);
  }
  
  public String toString()
  {
    return "SizeStrategy:\n  " + b + "\n" + "  SortedSizes" + c;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.bitmap_recycle.SizeStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
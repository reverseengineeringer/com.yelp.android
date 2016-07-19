package com.bumptech.glide.load;

import com.bumptech.glide.load.engine.i;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

public class c<T>
  implements f<T>
{
  private final Collection<? extends f<T>> a;
  private String b;
  
  @SafeVarargs
  public c(f<T>... paramVarArgs)
  {
    if (paramVarArgs.length < 1) {
      throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
    }
    a = Arrays.asList(paramVarArgs);
  }
  
  public i<T> a(i<T> parami, int paramInt1, int paramInt2)
  {
    Iterator localIterator = a.iterator();
    i locali;
    for (Object localObject = parami; localIterator.hasNext(); localObject = locali)
    {
      locali = ((f)localIterator.next()).a((i)localObject, paramInt1, paramInt2);
      if ((localObject != null) && (!localObject.equals(parami)) && (!localObject.equals(locali))) {
        ((i)localObject).d();
      }
    }
    return (i<T>)localObject;
  }
  
  public String a()
  {
    if (b == null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext()) {
        localStringBuilder.append(((f)localIterator.next()).a());
      }
      b = localStringBuilder.toString();
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
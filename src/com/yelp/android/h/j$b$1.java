package com.yelp.android.h;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

class j$b$1
  implements k.a
{
  j$b$1(j.b paramb, j paramj) {}
  
  public Object a(int paramInt)
  {
    c localc = a.a(paramInt);
    if (localc == null) {
      return null;
    }
    return localc.a();
  }
  
  public List<Object> a(String paramString, int paramInt)
  {
    paramString = a.a(paramString, paramInt);
    ArrayList localArrayList = new ArrayList();
    int i = paramString.size();
    paramInt = 0;
    while (paramInt < i)
    {
      localArrayList.add(((c)paramString.get(paramInt)).a());
      paramInt += 1;
    }
    return localArrayList;
  }
  
  public boolean a(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    return a.a(paramInt1, paramInt2, paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.h.j.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
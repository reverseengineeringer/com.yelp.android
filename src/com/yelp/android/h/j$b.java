package com.yelp.android.h;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

class j$b
  extends j.d
{
  public Object a(final j paramj)
  {
    k.a(new k.a()
    {
      public Object a(int paramAnonymousInt)
      {
        c localc = paramj.a(paramAnonymousInt);
        if (localc == null) {
          return null;
        }
        return localc.a();
      }
      
      public List<Object> a(String paramAnonymousString, int paramAnonymousInt)
      {
        paramAnonymousString = paramj.a(paramAnonymousString, paramAnonymousInt);
        ArrayList localArrayList = new ArrayList();
        int i = paramAnonymousString.size();
        paramAnonymousInt = 0;
        while (paramAnonymousInt < i)
        {
          localArrayList.add(((c)paramAnonymousString.get(paramAnonymousInt)).a());
          paramAnonymousInt += 1;
        }
        return localArrayList;
      }
      
      public boolean a(int paramAnonymousInt1, int paramAnonymousInt2, Bundle paramAnonymousBundle)
      {
        return paramj.a(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousBundle);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.h.j.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
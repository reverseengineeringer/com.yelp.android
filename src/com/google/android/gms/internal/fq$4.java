package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.formats.a;
import com.google.android.gms.ads.internal.formats.c;
import java.util.List;

class fq$4
  implements hr.a<List<c>, a>
{
  fq$4(fq paramfq, String paramString, Integer paramInteger1, Integer paramInteger2, int paramInt1, int paramInt2, int paramInt3) {}
  
  public a a(List<c> paramList)
  {
    if (paramList != null) {
      for (;;)
      {
        try
        {
          if (paramList.isEmpty()) {
            break;
          }
          String str = a;
          List localList = fq.a(paramList);
          Integer localInteger1 = b;
          Integer localInteger2 = c;
          if (d > 0)
          {
            paramList = Integer.valueOf(d);
            paramList = new a(str, localList, localInteger1, localInteger2, paramList, e + f);
          }
        }
        catch (RemoteException paramList)
        {
          gz.b("Could not get attribution icon", paramList);
          return null;
        }
        paramList = null;
      }
    }
    paramList = null;
    return paramList;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fq.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
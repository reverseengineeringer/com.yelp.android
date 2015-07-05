package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.net.Uri.Builder;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class i
  extends dg
{
  private static final String ID = a.ay.toString();
  private static final String URL = b.eX.toString();
  private static final String aqf = b.bl.toString();
  private static final String aqg = b.eW.toString();
  static final String aqh = "gtm_" + ID + "_unrepeatable";
  private static final Set<String> aqi = new HashSet();
  private final i.a aqj;
  private final Context mContext;
  
  public i(Context paramContext)
  {
    this(paramContext, new i.1(paramContext));
  }
  
  i(Context paramContext, i.a parama)
  {
    super(ID, new String[] { URL });
    aqj = parama;
    mContext = paramContext;
  }
  
  private boolean cl(String paramString)
  {
    boolean bool1 = true;
    for (;;)
    {
      try
      {
        boolean bool2 = cn(paramString);
        if (bool2) {
          return bool1;
        }
        if (cm(paramString)) {
          aqi.add(paramString);
        } else {
          bool1 = false;
        }
      }
      finally {}
    }
  }
  
  public void D(Map<String, d.a> paramMap)
  {
    String str;
    if (paramMap.get(aqg) != null)
    {
      str = di.j((d.a)paramMap.get(aqg));
      if ((str == null) || (!cl(str))) {
        break label46;
      }
    }
    label46:
    do
    {
      return;
      str = null;
      break;
      Uri.Builder localBuilder = Uri.parse(di.j((d.a)paramMap.get(URL))).buildUpon();
      paramMap = (d.a)paramMap.get(aqf);
      if (paramMap != null)
      {
        paramMap = di.o(paramMap);
        if (!(paramMap instanceof List))
        {
          bh.T("ArbitraryPixel: additional params not a list: not sending partial hit: " + localBuilder.build().toString());
          return;
        }
        paramMap = ((List)paramMap).iterator();
        while (paramMap.hasNext())
        {
          Object localObject = paramMap.next();
          if (!(localObject instanceof Map))
          {
            bh.T("ArbitraryPixel: additional params contains non-map: not sending partial hit: " + localBuilder.build().toString());
            return;
          }
          localObject = ((Map)localObject).entrySet().iterator();
          while (((Iterator)localObject).hasNext())
          {
            Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
            localBuilder.appendQueryParameter(localEntry.getKey().toString(), localEntry.getValue().toString());
          }
        }
      }
      paramMap = localBuilder.build().toString();
      aqj.pf().cB(paramMap);
      bh.V("ArbitraryPixel: url = " + paramMap);
    } while (str == null);
    try
    {
      aqi.add(str);
      cz.a(mContext, aqh, str, "true");
      return;
    }
    finally {}
  }
  
  boolean cm(String paramString)
  {
    return mContext.getSharedPreferences(aqh, 0).contains(paramString);
  }
  
  boolean cn(String paramString)
  {
    return aqi.contains(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
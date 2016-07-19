package com.google.android.gms.measurement;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.util.LogPrinter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class c
  implements j
{
  private static final Uri a;
  private final LogPrinter b = new LogPrinter(4, "GA/LogCatTransport");
  
  static
  {
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme("uri");
    localBuilder.authority("local");
    a = localBuilder.build();
  }
  
  public Uri a()
  {
    return a;
  }
  
  public void a(d paramd)
  {
    Object localObject = new ArrayList(paramd.b());
    Collections.sort((List)localObject, new Comparator()
    {
      public int a(f paramAnonymousf1, f paramAnonymousf2)
      {
        return paramAnonymousf1.getClass().getCanonicalName().compareTo(paramAnonymousf2.getClass().getCanonicalName());
      }
    });
    paramd = new StringBuilder();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = ((f)((Iterator)localObject).next()).toString();
      if (!TextUtils.isEmpty(str))
      {
        if (paramd.length() != 0) {
          paramd.append(", ");
        }
        paramd.append(str);
      }
    }
    b.println(paramd.toString());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
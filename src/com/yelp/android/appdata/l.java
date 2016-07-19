package com.yelp.android.appdata;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.yelp.android.util.q;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class l
  extends q<Context, Void, Void>
{
  private final String a;
  private final Map<String, String> b;
  
  public l(String paramString, Map<String, String> paramMap)
  {
    a = paramString;
    b = paramMap;
  }
  
  protected Void a(Context... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      SharedPreferences.Editor localEditor = paramVarArgs[i].getSharedPreferences(a, 0).edit();
      localEditor.clear();
      Iterator localIterator = b.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localEditor.putString((String)localEntry.getKey(), (String)localEntry.getValue());
      }
      localEditor.commit();
      i += 1;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
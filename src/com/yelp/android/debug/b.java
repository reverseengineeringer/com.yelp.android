package com.yelp.android.debug;

import android.text.TextUtils;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.client.methods.HttpUriRequest;

public class b
{
  private final String a;
  private final Map<String, String> b;
  private final List<byte[]> c;
  
  public boolean a(String paramString)
  {
    return TextUtils.equals(a, paramString);
  }
  
  public boolean a(HttpUriRequest paramHttpUriRequest)
  {
    return (b(paramHttpUriRequest)) && (c(paramHttpUriRequest)) && (d(paramHttpUriRequest));
  }
  
  public boolean b(HttpUriRequest paramHttpUriRequest)
  {
    return a(g.d(paramHttpUriRequest));
  }
  
  public boolean c(HttpUriRequest paramHttpUriRequest)
  {
    paramHttpUriRequest = g.a(paramHttpUriRequest);
    Iterator localIterator = b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (!TextUtils.equals((String)paramHttpUriRequest.get(localEntry.getKey()), (CharSequence)localEntry.getValue())) {
        return false;
      }
    }
    return true;
  }
  
  public boolean d(HttpUriRequest paramHttpUriRequest)
  {
    boolean bool3 = false;
    boolean bool1;
    if (c.size() == 0)
    {
      bool1 = true;
      return bool1;
    }
    paramHttpUriRequest = g.b(paramHttpUriRequest);
    int i = 0;
    label28:
    int j;
    label46:
    boolean bool2;
    if (i < c.size())
    {
      j = 0;
      bool1 = false;
      if (j >= paramHttpUriRequest.size()) {
        break label118;
      }
      bool2 = Arrays.equals((byte[])c.get(i), (byte[])paramHttpUriRequest.get(j));
      if (!bool2) {}
    }
    for (;;)
    {
      bool1 = bool3;
      if (!bool2) {
        break;
      }
      i += 1;
      break label28;
      j += 1;
      bool1 = bool2;
      break label46;
      return true;
      label118:
      bool2 = bool1;
    }
  }
  
  public List<String> e(HttpUriRequest paramHttpUriRequest)
  {
    ArrayList localArrayList = new ArrayList();
    paramHttpUriRequest = g.a(paramHttpUriRequest);
    Iterator localIterator = b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (!TextUtils.equals((String)paramHttpUriRequest.get(localEntry.getKey()), (CharSequence)localEntry.getValue())) {
        localArrayList.add(localEntry.getKey());
      }
    }
    return localArrayList;
  }
  
  public String toString()
  {
    return super.toString() + "\n" + "\tPath: " + a + "\n" + "\tParams: " + "\n" + StringUtils.a(b, "\t");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.debug.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
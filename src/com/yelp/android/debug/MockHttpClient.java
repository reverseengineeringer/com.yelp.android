package com.yelp.android.debug;

import android.util.Log;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpUriRequest;

public class MockHttpClient
  extends a
{
  private final Map<b, c> a;
  private final List<MockHttpClientException> b;
  
  private List<b> a(String paramString)
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      Iterator localIterator = a.keySet().iterator();
      while (localIterator.hasNext())
      {
        b localb = (b)localIterator.next();
        if (localb.a(paramString)) {
          localArrayList.add(localb);
        }
      }
    }
    finally {}
    return localArrayList;
  }
  
  private List<b> b(HttpUriRequest paramHttpUriRequest)
  {
    try
    {
      paramHttpUriRequest = a(g.d(paramHttpUriRequest));
      return paramHttpUriRequest;
    }
    finally
    {
      paramHttpUriRequest = finally;
      throw paramHttpUriRequest;
    }
  }
  
  public c a(HttpUriRequest paramHttpUriRequest)
  {
    c localc = null;
    for (;;)
    {
      try
      {
        Iterator localIterator = a.entrySet().iterator();
        if (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          if (((b)localEntry.getKey()).a(paramHttpUriRequest)) {
            localc = (c)localEntry.getValue();
          }
        }
        else
        {
          return localc;
        }
      }
      finally {}
    }
  }
  
  public HttpResponse execute(HttpUriRequest paramHttpUriRequest)
  {
    Object localObject1;
    for (;;)
    {
      try
      {
        Log.d("MockHttpClient", "Processing request: " + StringUtils.a(paramHttpUriRequest));
        localObject1 = a(paramHttpUriRequest);
        if (localObject1 != null) {
          break;
        }
        localObject1 = new StringBuilder().append("Could not find a matching response to request:\n").append(StringUtils.a(paramHttpUriRequest)).append("\n");
        localObject2 = b(paramHttpUriRequest);
        if (((List)localObject2).isEmpty())
        {
          ((StringBuilder)localObject1).append("There were no request matchers for that path!\n");
          paramHttpUriRequest = new MockHttpClientException(((StringBuilder)localObject1).toString());
          b.add(paramHttpUriRequest);
          throw paramHttpUriRequest;
        }
      }
      finally {}
      ((StringBuilder)localObject1).append("There were ").append(((List)localObject2).size()).append(" request-matchers for that path that didn't match your params:\n");
      Object localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        b localb = (b)((Iterator)localObject2).next();
        ((StringBuilder)localObject1).append(localb.toString());
        ((StringBuilder)localObject1).append("\tParams that failed to match: ").append(StringUtils.b(localb.e(paramHttpUriRequest))).append("\n");
      }
    }
    paramHttpUriRequest = ((c)localObject1).a(paramHttpUriRequest);
    return paramHttpUriRequest;
  }
  
  public static class MockHttpClientException
    extends IllegalStateException
  {
    public MockHttpClientException(String paramString)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.debug.MockHttpClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
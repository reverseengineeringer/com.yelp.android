package com.yelp.android.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import org.apache.http.NameValuePair;
import org.apache.http.entity.AbstractHttpEntity;

public class p
  extends AbstractHttpEntity
{
  private final Collection<? extends NameValuePair> a;
  private final Collection<q> b;
  private final n c;
  
  public p(Collection<? extends NameValuePair> paramCollection, Collection<q> paramCollection1, n paramn)
  {
    Object localObject = paramCollection;
    if (paramCollection == null) {
      localObject = Collections.emptySet();
    }
    a = ((Collection)localObject);
    paramCollection = paramCollection1;
    if (paramCollection1 == null) {
      paramCollection = Collections.emptySet();
    }
    b = paramCollection;
    c = paramn;
    super.setContentType("multipart/form-data; boundary=" + new String(m.b));
    super.setChunked(false);
  }
  
  public InputStream getContent()
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    writeTo(localByteArrayOutputStream);
    return new ByteArrayInputStream(localByteArrayOutputStream.toByteArray());
  }
  
  public long getContentLength()
  {
    Iterator localIterator = a.iterator();
    long l = 0L;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        NameValuePair localNameValuePair = (NameValuePair)localIterator.next();
        l += m.a(localNameValuePair.getName().length(), null, m.h);
        try
        {
          int i = localNameValuePair.getValue().getBytes("UTF-8").length;
          l = i + l;
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          for (;;) {}
        }
      }
    }
    localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      q localq = (q)localIterator.next();
      l = l + m.a(a.length, b, c) + e;
    }
    return m.a() + l;
  }
  
  public boolean isChunked()
  {
    return false;
  }
  
  public boolean isRepeatable()
  {
    return false;
  }
  
  public boolean isStreaming()
  {
    return false;
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    Iterator localIterator;
    Object localObject;
    if (a != null)
    {
      localIterator = a.iterator();
      while (localIterator.hasNext())
      {
        localObject = (NameValuePair)localIterator.next();
        m.a(paramOutputStream, new ByteArrayInputStream(((NameValuePair)localObject).getValue().getBytes("UTF-8")), ((NameValuePair)localObject).getName().getBytes("UTF-8"), null, m.h, null);
      }
    }
    if (b != null)
    {
      localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        localObject = (q)localIterator.next();
        m.a(paramOutputStream, d, a, b, c, c);
      }
    }
    m.a(paramOutputStream);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
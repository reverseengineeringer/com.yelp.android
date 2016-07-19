package com.yelp.android.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import org.apache.http.NameValuePair;
import org.apache.http.entity.AbstractHttpEntity;

public class j
  extends AbstractHttpEntity
{
  private final Collection<? extends NameValuePair> a;
  private final Collection<a> b;
  private final g.a c;
  
  public j(Collection<? extends NameValuePair> paramCollection, Collection<a> paramCollection1, g.a parama)
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
    c = parama;
    super.setContentType("multipart/form-data; boundary=" + new String(g.b));
    super.setChunked(false);
  }
  
  public Collection<? extends NameValuePair> a()
  {
    return a;
  }
  
  public Collection<a> b()
  {
    return b;
  }
  
  public InputStream getContent()
    throws IOException, IllegalStateException
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
        l += g.a(localNameValuePair.getName().length(), null, g.h);
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
      a locala = (a)localIterator.next();
      l = l + g.a(a.length, b, c) + e;
    }
    return g.a() + l;
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
    throws IOException
  {
    Iterator localIterator;
    Object localObject;
    if (a != null)
    {
      localIterator = a.iterator();
      while (localIterator.hasNext())
      {
        localObject = (NameValuePair)localIterator.next();
        g.a(paramOutputStream, new ByteArrayInputStream(((NameValuePair)localObject).getValue().getBytes("UTF-8")), ((NameValuePair)localObject).getName().getBytes("UTF-8"), null, g.h, null);
      }
    }
    if (b != null)
    {
      localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        localObject = (a)localIterator.next();
        g.a(paramOutputStream, d, a, b, c, c);
      }
    }
    g.a(paramOutputStream);
  }
  
  public static class a
  {
    public final byte[] a;
    public final byte[] b;
    public final byte[] c;
    public final InputStream d;
    public final long e;
    
    public a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, InputStream paramInputStream, long paramLong)
    {
      a = paramArrayOfByte1;
      b = paramArrayOfByte2;
      c = paramArrayOfByte3;
      d = paramInputStream;
      e = paramLong;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
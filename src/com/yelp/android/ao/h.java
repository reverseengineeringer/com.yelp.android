package com.yelp.android.ao;

import android.os.Message;
import java.io.IOException;
import java.util.regex.Pattern;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.util.EntityUtils;

public class h
  extends f
{
  private static String[] a = { "image/jpeg", "image/png" };
  
  public void a(int paramInt, byte[] paramArrayOfByte)
  {
    a(paramArrayOfByte);
  }
  
  protected void a(Message paramMessage)
  {
    switch (what)
    {
    default: 
      super.a(paramMessage);
      return;
    case 0: 
      paramMessage = (Object[])obj;
      c(((Integer)paramMessage[0]).intValue(), (byte[])paramMessage[1]);
      return;
    }
    paramMessage = (Object[])obj;
    c((Throwable)paramMessage[0], paramMessage[1].toString());
  }
  
  protected void a(Throwable paramThrowable, byte[] paramArrayOfByte)
  {
    b(a(1, new Object[] { paramThrowable, paramArrayOfByte }));
  }
  
  void a(HttpResponse paramHttpResponse)
  {
    Object localObject1 = null;
    int j = 0;
    StatusLine localStatusLine = paramHttpResponse.getStatusLine();
    Object localObject2 = paramHttpResponse.getHeaders("Content-Type");
    if (localObject2.length != 1)
    {
      a(new HttpResponseException(localStatusLine.getStatusCode(), "None, or more than one, Content-Type Header found!"), null);
      return;
    }
    localObject2 = localObject2[0];
    String[] arrayOfString = a;
    int k = arrayOfString.length;
    int i = 0;
    while (i < k)
    {
      if (Pattern.matches(arrayOfString[i], ((Header)localObject2).getValue())) {
        j = 1;
      }
      i += 1;
    }
    if (j == 0)
    {
      a(new HttpResponseException(localStatusLine.getStatusCode(), "Content-Type not allowed!"), null);
      return;
    }
    for (;;)
    {
      try
      {
        paramHttpResponse = paramHttpResponse.getEntity();
        if (paramHttpResponse == null) {
          break label222;
        }
        paramHttpResponse = new BufferedHttpEntity(paramHttpResponse);
        paramHttpResponse = EntityUtils.toByteArray(paramHttpResponse);
      }
      catch (IOException paramHttpResponse)
      {
        a(paramHttpResponse, (byte[])null);
        paramHttpResponse = (HttpResponse)localObject1;
        continue;
        b(localStatusLine.getStatusCode(), paramHttpResponse);
        return;
      }
      if (localStatusLine.getStatusCode() >= 300)
      {
        a(new HttpResponseException(localStatusLine.getStatusCode(), localStatusLine.getReasonPhrase()), paramHttpResponse);
        return;
      }
      label222:
      paramHttpResponse = null;
    }
  }
  
  public void a(byte[] paramArrayOfByte) {}
  
  protected void b(int paramInt, byte[] paramArrayOfByte)
  {
    b(a(0, new Object[] { Integer.valueOf(paramInt), paramArrayOfByte }));
  }
  
  protected void c(int paramInt, byte[] paramArrayOfByte)
  {
    a(paramInt, paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ao.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
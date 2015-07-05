package com.adjust.sdk;

import android.os.HandlerThread;
import android.os.Message;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

public class n
  extends HandlerThread
  implements h
{
  private o a;
  private g b;
  private HttpClient c;
  private Logger d;
  
  public n(g paramg)
  {
    super("Adjust", 1);
    setDaemon(true);
    start();
    d = f.a();
    a = new o(getLooper(), this);
    b = paramg;
    paramg = Message.obtain();
    arg1 = 72401;
    a.sendMessage(paramg);
  }
  
  private String a(String paramString, Throwable paramThrowable)
  {
    if (paramThrowable != null) {
      return String.format("%s: %s", new Object[] { paramString, paramThrowable });
    }
    return String.format("%s", new Object[] { paramString });
  }
  
  private String a(HttpResponse paramHttpResponse)
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      paramHttpResponse.getEntity().writeTo(localByteArrayOutputStream);
      localByteArrayOutputStream.close();
      paramHttpResponse = localByteArrayOutputStream.toString().trim();
      return paramHttpResponse;
    }
    catch (Exception paramHttpResponse)
    {
      d.f(String.format("Failed to parse response (%s)", new Object[] { paramHttpResponse }));
    }
    return "Failed to parse response";
  }
  
  private void a()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 60000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 60000);
    c = f.a(localBasicHttpParams);
  }
  
  private void a(ActivityPackage paramActivityPackage, String paramString, Throwable paramThrowable)
  {
    boolean bool = false;
    String str1 = paramActivityPackage.getFailureMessage();
    String str2 = b.f();
    paramString = a(paramString, paramThrowable);
    d.f(String.format("%s. (%s) %s", new Object[] { str1, paramString, str2 }));
    paramString = p.b(paramString);
    if (b.g()) {}
    for (;;)
    {
      paramString.b(bool);
      b.a(paramActivityPackage, paramString);
      b.c();
      return;
      bool = true;
    }
  }
  
  private void a(HttpResponse paramHttpResponse, ActivityPackage paramActivityPackage)
  {
    int i = paramHttpResponse.getStatusLine().getStatusCode();
    paramHttpResponse = p.a(a(paramHttpResponse));
    if (200 == i)
    {
      paramHttpResponse.a(true);
      d.d(paramActivityPackage.getSuccessMessage());
    }
    for (;;)
    {
      b.a(paramActivityPackage, paramHttpResponse);
      b.b();
      return;
      d.f(String.format("%s. (%s)", new Object[] { paramActivityPackage.getFailureMessage(), paramHttpResponse.b() }));
    }
  }
  
  private void b(ActivityPackage paramActivityPackage)
  {
    try
    {
      HttpUriRequest localHttpUriRequest = c(paramActivityPackage);
      a(c.execute(localHttpUriRequest), paramActivityPackage);
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      b(paramActivityPackage, "Failed to encode parameters", localUnsupportedEncodingException);
      return;
    }
    catch (ClientProtocolException localClientProtocolException)
    {
      a(paramActivityPackage, "Client protocol error", localClientProtocolException);
      return;
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
      a(paramActivityPackage, "Request timed out", localSocketTimeoutException);
      return;
    }
    catch (IOException localIOException)
    {
      a(paramActivityPackage, "Request failed", localIOException);
      return;
    }
    catch (Throwable localThrowable)
    {
      b(paramActivityPackage, "Runtime exception", localThrowable);
    }
  }
  
  private void b(ActivityPackage paramActivityPackage, String paramString, Throwable paramThrowable)
  {
    String str = paramActivityPackage.getFailureMessage();
    paramString = a(paramString, paramThrowable);
    d.f(String.format("%s. (%s)", new Object[] { str, paramString }));
    paramString = p.b(paramString);
    b.a(paramActivityPackage, paramString);
    b.b();
  }
  
  private HttpUriRequest c(ActivityPackage paramActivityPackage)
  {
    HttpPost localHttpPost = new HttpPost("https://app.adjust.io" + paramActivityPackage.getPath());
    Object localObject = Locale.getDefault().getLanguage();
    localHttpPost.addHeader("User-Agent", paramActivityPackage.getUserAgent());
    localHttpPost.addHeader("Client-SDK", paramActivityPackage.getClientSdk());
    localHttpPost.addHeader("Accept-Language", (String)localObject);
    localObject = new ArrayList();
    paramActivityPackage = paramActivityPackage.getParameters().entrySet().iterator();
    for (;;)
    {
      if (!paramActivityPackage.hasNext())
      {
        ((List)localObject).add(new BasicNameValuePair("sent_at", q.a(System.currentTimeMillis())));
        paramActivityPackage = new UrlEncodedFormEntity((List)localObject);
        paramActivityPackage.setContentType("application/x-www-form-urlencoded");
        localHttpPost.setEntity(paramActivityPackage);
        return localHttpPost;
      }
      Map.Entry localEntry = (Map.Entry)paramActivityPackage.next();
      ((List)localObject).add(new BasicNameValuePair((String)localEntry.getKey(), (String)localEntry.getValue()));
    }
  }
  
  public void a(ActivityPackage paramActivityPackage)
  {
    Message localMessage = Message.obtain();
    arg1 = 72400;
    obj = paramActivityPackage;
    a.sendMessage(localMessage);
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
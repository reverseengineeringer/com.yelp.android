package com.google.android.gms.analytics;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.zip.GZIPOutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;

public class h
  implements r
{
  private final Context mContext;
  private final String wl;
  private final HttpClient yf;
  private URL yg;
  private int yh;
  private int yi;
  private int yj;
  private String yk;
  private String yl;
  private i ym;
  private l yn;
  private Set<Integer> yo = new HashSet();
  private boolean yp = false;
  private long yq;
  private long yr;
  private o ys;
  private volatile boolean yt = false;
  
  h(HttpClient paramHttpClient, Context paramContext, o paramo)
  {
    mContext = paramContext.getApplicationContext();
    ys = paramo;
    wl = a("GoogleAnalytics", "4.0", Build.VERSION.RELEASE, an.a(Locale.getDefault()), Build.MODEL, Build.ID);
    yf = paramHttpClient;
  }
  
  private String a(ab paramab, List<String> paramList, i parami)
  {
    if (parami == i.yw)
    {
      if ((paramab.fa() == null) || (paramab.fa().length() == 0)) {}
      long l;
      for (paramList = "";; paramList = paramab.fa())
      {
        l = System.currentTimeMillis();
        if (!TextUtils.isEmpty(paramList)) {
          break;
        }
        return "";
      }
      return ac.a(paramab, l);
    }
    paramab = "";
    parami = paramList.iterator();
    while (parami.hasNext())
    {
      String str = (String)parami.next();
      if (str.length() != 0)
      {
        paramList = paramab;
        if (paramab.length() != 0) {
          paramList = paramab + "\n";
        }
        paramab = paramList + str;
      }
    }
    return paramab;
  }
  
  private URL a(ab paramab)
  {
    if (yg != null) {
      return yg;
    }
    for (paramab = paramab.fd();; paramab = "https://ssl.google-analytics.com/collect") {
      try
      {
        if ("http:".equals(paramab))
        {
          paramab = "http://www.google-analytics.com/collect";
          paramab = new URL(paramab);
          return paramab;
        }
      }
      catch (MalformedURLException paramab)
      {
        ae.T("Error trying to parse the hardcoded host url. This really shouldn't happen.");
        return null;
      }
    }
  }
  
  private void a(af paramaf, HttpHost paramHttpHost, i parami, l paraml)
  {
    paramaf.g("_bs", parami.toString());
    paramaf.g("_cs", paraml.toString());
    parami = paramaf.fg();
    if (TextUtils.isEmpty(parami)) {
      return;
    }
    if (paramHttpHost == null) {}
    for (;;)
    {
      try
      {
        paramHttpHost = new URL("https://ssl.google-analytics.com");
        paramHttpHost = new HttpHost(paramHttpHost.getHost(), paramHttpHost.getPort(), paramHttpHost.getProtocol());
        a(parami, paramHttpHost, 1, paramaf, l.yI);
        return;
      }
      catch (MalformedURLException paramaf)
      {
        return;
      }
    }
  }
  
  private void a(HttpEntityEnclosingRequest paramHttpEntityEnclosingRequest)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Object localObject = paramHttpEntityEnclosingRequest.getAllHeaders();
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      localStringBuffer.append(localObject[i].toString()).append("\n");
      i += 1;
    }
    localStringBuffer.append(paramHttpEntityEnclosingRequest.getRequestLine().toString()).append("\n");
    if (paramHttpEntityEnclosingRequest.getEntity() != null) {}
    try
    {
      paramHttpEntityEnclosingRequest = paramHttpEntityEnclosingRequest.getEntity().getContent();
      if (paramHttpEntityEnclosingRequest != null)
      {
        i = paramHttpEntityEnclosingRequest.available();
        if (i > 0)
        {
          localObject = new byte[i];
          paramHttpEntityEnclosingRequest.read((byte[])localObject);
          localStringBuffer.append("POST:\n");
          localStringBuffer.append(new String((byte[])localObject)).append("\n");
        }
      }
    }
    catch (IOException paramHttpEntityEnclosingRequest)
    {
      for (;;)
      {
        ae.W("Error Writing hit to log...");
      }
    }
    ae.U(localStringBuffer.toString());
  }
  
  private boolean a(String paramString, HttpHost paramHttpHost, int paramInt, af paramaf, l paraml)
  {
    boolean bool;
    if (paramInt > 1)
    {
      bool = true;
      if ((paramString.getBytes().length <= yj) && (paramString.getBytes().length <= yi)) {
        break label79;
      }
      ae.W("Request too long (> " + Math.min(yi, yj) + " bytes)--not sent");
    }
    label79:
    HttpEntityEnclosingRequest localHttpEntityEnclosingRequest;
    do
    {
      return true;
      bool = false;
      break;
      if (yt)
      {
        ae.U("Dry run enabled. Hit not actually sent.");
        return true;
      }
      localHttpEntityEnclosingRequest = d(paramString, bool);
    } while (localHttpEntityEnclosingRequest == null);
    int i;
    if (localHttpEntityEnclosingRequest.getRequestLine().getMethod().equals("GET"))
    {
      i = paramString.getBytes().length;
      paramInt = paramString.getBytes().length;
      localHttpEntityEnclosingRequest.addHeader("Host", paramHttpHost.toHostString());
      if (ae.ff()) {
        a(localHttpEntityEnclosingRequest);
      }
    }
    for (;;)
    {
      try
      {
        paramString = yf.execute(paramHttpHost, localHttpEntityEnclosingRequest);
        paramaf.e("_td", i);
        paramaf.e("_cd", paramInt);
        paramInt = paramString.getStatusLine().getStatusCode();
        paramHttpHost = paramString.getEntity();
        if (paramHttpHost != null) {
          paramHttpHost.consumeContent();
        }
        if (paramInt == 200) {
          break;
        }
        if ((bool) && (yo.contains(Integer.valueOf(paramInt))))
        {
          ae.U("Falling back to single hit per request mode.");
          yp = true;
          yq = System.currentTimeMillis();
          return false;
          try
          {
            switch (h.1.yu[paraml.ordinal()])
            {
            case 1: 
              paramInt = paramString.getBytes().length;
              localHttpEntityEnclosingRequest.setEntity(new StringEntity(paramString));
              i = paramString.getBytes().length;
            }
          }
          catch (UnsupportedEncodingException paramString)
          {
            GZIPOutputStream localGZIPOutputStream;
            ae.T("Encoding error, hit will be discarded");
            return true;
          }
          catch (IOException paramString)
          {
            ae.T("Unexpected IOException: " + paramString.getMessage());
            ae.T("Request will be discarded");
            return true;
          }
          paraml = new ByteArrayOutputStream();
          localGZIPOutputStream = new GZIPOutputStream(paraml);
          localGZIPOutputStream.write(paramString.getBytes());
          localGZIPOutputStream.close();
          paraml = paraml.toByteArray();
          paramInt = paraml.length + 0;
          localHttpEntityEnclosingRequest.setEntity(new ByteArrayEntity(paraml));
          localHttpEntityEnclosingRequest.addHeader("Content-Encoding", "gzip");
          continue;
        }
        ae.W("Bad response: " + paramString.getStatusLine().getStatusCode());
        return true;
      }
      catch (ClientProtocolException paramString)
      {
        ae.W("ClientProtocolException sending hit; discarding hit...");
        return true;
      }
      catch (IOException paramString)
      {
        ae.W("Exception sending hit: " + paramString.getClass().getSimpleName());
        ae.W(paramString.getMessage());
        return false;
      }
    }
  }
  
  private HttpEntityEnclosingRequest d(String paramString, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString))
    {
      System.out.println("Empty hit, discarding.");
      return null;
    }
    paramString = yk + "?" + paramString;
    if ((paramString.length() < yh) && (!paramBoolean)) {
      paramString = new BasicHttpEntityEnclosingRequest("GET", paramString);
    }
    for (;;)
    {
      paramString.addHeader("User-Agent", wl);
      return paramString;
      if (paramBoolean) {
        paramString = new BasicHttpEntityEnclosingRequest("POST", yl);
      } else {
        paramString = new BasicHttpEntityEnclosingRequest("POST", yk);
      }
    }
  }
  
  int a(List<ab> paramList, int paramInt)
  {
    int j;
    if (paramList.isEmpty()) {
      j = 0;
    }
    int i;
    long l1;
    do
    {
      return j;
      i = paramInt;
      if (paramInt > paramList.size()) {
        i = paramList.size();
      }
      j = i - 1;
      l1 = 0L;
      paramInt = i;
      i = j;
      j = paramInt;
    } while (i <= 0);
    ab localab1 = (ab)paramList.get(i - 1);
    ab localab2 = (ab)paramList.get(i);
    long l2 = localab1.fc();
    long l3 = localab2.fc();
    if ((l2 != 0L) && (l3 != 0L) && (l3 - l2 > l1))
    {
      l1 = l3 - l2;
      paramInt = i;
    }
    for (;;)
    {
      i -= 1;
      break;
    }
  }
  
  public int a(List<ab> paramList, af paramaf, boolean paramBoolean)
  {
    yh = ys.eb();
    yi = ys.ec();
    yj = ys.ed();
    int i = ys.ee();
    yk = ys.eg();
    yl = ys.eh();
    ym = ys.ei();
    yn = ys.ej();
    yo.clear();
    yo.addAll(ys.ek());
    yr = ys.ef();
    if ((!yp) && (yo.isEmpty()))
    {
      yp = true;
      yq = System.currentTimeMillis();
    }
    if ((yp) && (System.currentTimeMillis() - yq > 1000L * yr)) {
      yp = false;
    }
    i locali;
    l locall;
    int n;
    int k;
    long l3;
    Object localObject3;
    Object localObject4;
    long l1;
    int j;
    label297:
    Object localObject1;
    label334:
    Object localObject2;
    long l2;
    int m;
    if (yp)
    {
      locali = i.yw;
      locall = l.yI;
      n = 0;
      k = Math.min(paramList.size(), i);
      paramaf.e("_hr", paramList.size());
      l3 = System.currentTimeMillis();
      localObject3 = new ArrayList();
      localObject4 = new ArrayList();
      l1 = 0L;
      if (locali == i.yw) {
        break label1085;
      }
      Iterator localIterator = paramList.iterator();
      j = 0;
      if (!localIterator.hasNext()) {
        break label1079;
      }
      localObject1 = (ab)localIterator.next();
      if (!TextUtils.isEmpty(((ab)localObject1).fa())) {
        break label508;
      }
      localObject1 = "";
      localObject2 = localObject1;
      if (((String)localObject1).getBytes().length > yi) {
        localObject2 = "";
      }
      ((List)localObject3).add(localObject2);
      l2 = l1;
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        m = ((String)localObject2).getBytes().length;
        if (j != 0) {
          break label520;
        }
        i = 0;
        label393:
        l2 = l1 + (i + m);
      }
      ((List)localObject4).add(Long.valueOf(l2));
      if (l2 > yj) {
        break label1072;
      }
      i = j + 1;
      label434:
      if (i != k) {
        break label526;
      }
      k = 1;
      l1 = l2;
      j = i;
    }
    for (;;)
    {
      if ((j > 1) && (((Long)((List)localObject4).get(j - 1)).longValue() > yj))
      {
        j -= 1;
        continue;
        locali = ym;
        locall = yn;
        break;
        label508:
        localObject1 = ac.a((ab)localObject1, l3);
        break label334;
        label520:
        i = 1;
        break label393;
        label526:
        j = i;
        l1 = l2;
        break label297;
      }
      if (l1 > yj) {
        switch (h.1.yv[locali.ordinal()])
        {
        default: 
          ae.W("Unexpected batching strategy encountered; sending a single hit.");
          localObject1 = (String)((List)localObject3).get(0);
          ((List)localObject3).clear();
          ((List)localObject3).add(localObject1);
          i = 1;
          if (i >= ((List)localObject3).size()) {
            break;
          }
        }
      }
      for (localObject1 = ((List)localObject3).subList(0, i);; localObject1 = localObject3)
      {
        i = 0;
        localObject2 = null;
        m = 0;
        j = n;
        for (;;)
        {
          if (m < k)
          {
            localObject3 = (ab)paramList.get(m);
            localObject4 = a((ab)localObject3);
            n = Math.max(1, ((List)localObject1).size());
            if (localObject4 == null)
            {
              ae.W("No destination: discarding hit.");
              i += n;
              j += n;
              m += 1;
              continue;
              m = ((List)localObject3).size() / 2;
              i = m;
              if (j > m) {
                break;
              }
              i = j;
              break;
              i = a(paramList, j);
              break;
              i = b(paramList, j);
              break;
              if (l1 < yj * 2)
              {
                i = ((List)localObject4).size() - 1;
                while ((i > 0) && (((Long)((List)localObject4).get(i)).longValue() > l1 / 2L)) {
                  i -= 1;
                }
                break;
              }
              i = j;
              break;
              i = j;
              break;
            }
            localObject2 = new HttpHost(((URL)localObject4).getHost(), ((URL)localObject4).getPort(), ((URL)localObject4).getProtocol());
            if (!a(a((ab)localObject3, (List)localObject1, locali), (HttpHost)localObject2, n, paramaf, locall))
            {
              paramaf.e("_de", 1);
              paramaf.e("_hd", i);
              paramaf.e("_hs", j);
              a(paramaf, (HttpHost)localObject2, locali, locall);
              return j;
            }
            localObject3 = ((List)localObject1).iterator();
            label973:
            if (((Iterator)localObject3).hasNext())
            {
              if (!TextUtils.isEmpty((String)((Iterator)localObject3).next())) {
                break label1062;
              }
              i += 1;
            }
          }
        }
        label1062:
        for (;;)
        {
          break label973;
          paramaf.e("_rs", 1);
          j += n;
          break;
          paramaf.e("_hd", i);
          paramaf.e("_hs", j);
          if (paramBoolean) {
            a(paramaf, (HttpHost)localObject2, locali, locall);
          }
          return j;
        }
      }
      label1072:
      i = j;
      break label434;
      label1079:
      k = 1;
      continue;
      label1085:
      j = 0;
    }
  }
  
  String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[] { paramString1, paramString2, paramString3, paramString4, paramString5, paramString6 });
  }
  
  public void ad(String paramString)
  {
    try
    {
      yg = new URL(paramString);
      return;
    }
    catch (MalformedURLException paramString)
    {
      yg = null;
    }
  }
  
  int b(List<ab> paramList, int paramInt)
  {
    int i;
    if (paramList.isEmpty())
    {
      i = 0;
      return i;
    }
    int j = paramInt - 1;
    for (;;)
    {
      i = paramInt;
      if (j <= 0) {
        break;
      }
      String str = ((ab)paramList.get(j)).fa();
      if (!TextUtils.isEmpty(str))
      {
        if (str.contains("sc=start")) {
          return j;
        }
        if (str.contains("sc=end")) {
          return j + 1;
        }
      }
      j -= 1;
    }
  }
  
  public boolean ea()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)mContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()))
    {
      ae.V("...no network connectivity");
      return false;
    }
    return true;
  }
  
  public void setDryRun(boolean paramBoolean)
  {
    yt = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
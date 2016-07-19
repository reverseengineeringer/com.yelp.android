package com.crashlytics.android.answers;

import com.yelp.android.ct.k;
import io.fabric.sdk.android.h;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.o;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.c;
import java.io.File;
import java.util.Iterator;
import java.util.List;

class l
  extends io.fabric.sdk.android.services.common.a
  implements k
{
  private final String b;
  
  public l(h paramh, String paramString1, String paramString2, c paramc, String paramString3)
  {
    super(paramh, paramString1, paramString2, paramc, HttpMethod.POST);
    b = paramString3;
  }
  
  private HttpRequest a(HttpRequest paramHttpRequest, String paramString)
  {
    return paramHttpRequest.a("X-CRASHLYTICS-API-CLIENT-TYPE", "android").a("X-CRASHLYTICS-API-CLIENT-VERSION", a.c().a()).a("X-CRASHLYTICS-API-KEY", paramString);
  }
  
  private HttpRequest a(HttpRequest paramHttpRequest, List<File> paramList)
  {
    paramList = paramList.iterator();
    int i = 0;
    while (paramList.hasNext())
    {
      File localFile = (File)paramList.next();
      CommonUtils.a(a.c().B(), "Adding analytics session file " + localFile.getName() + " to multipart POST");
      paramHttpRequest.a("session_analytics_file_" + i, localFile.getName(), "application/vnd.crashlytics.android.events", localFile);
      i += 1;
    }
    return paramHttpRequest;
  }
  
  public boolean a(List<File> paramList)
  {
    HttpRequest localHttpRequest = a(a(b(), b), paramList);
    CommonUtils.a(a.c().B(), "Sending " + paramList.size() + " analytics files to " + a());
    int i = localHttpRequest.b();
    CommonUtils.a(a.c().B(), "Response code for analytics file send is " + i);
    return o.a(i) == 0;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.answers.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
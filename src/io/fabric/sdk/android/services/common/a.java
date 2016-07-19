package io.fabric.sdk.android.services.common;

import io.fabric.sdk.android.h;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.c;
import java.util.Collections;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class a
{
  private static final Pattern b = Pattern.compile("http(s?)://[^\\/]+", 2);
  protected final h a;
  private final String c;
  private final c d;
  private final HttpMethod e;
  private final String f;
  
  public a(h paramh, String paramString1, String paramString2, c paramc, HttpMethod paramHttpMethod)
  {
    if (paramString2 == null) {
      throw new IllegalArgumentException("url must not be null.");
    }
    if (paramc == null) {
      throw new IllegalArgumentException("requestFactory must not be null.");
    }
    a = paramh;
    f = paramString1;
    c = a(paramString2);
    d = paramc;
    e = paramHttpMethod;
  }
  
  private String a(String paramString)
  {
    String str = paramString;
    if (!CommonUtils.c(f)) {
      str = b.matcher(paramString).replaceFirst(f);
    }
    return str;
  }
  
  protected HttpRequest a(Map<String, String> paramMap)
  {
    return d.a(e, a(), paramMap).a(false).a(10000).a("User-Agent", "Crashlytics Android SDK/" + a.a()).a("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
  }
  
  protected String a()
  {
    return c;
  }
  
  protected HttpRequest b()
  {
    return a(Collections.emptyMap());
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.common.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
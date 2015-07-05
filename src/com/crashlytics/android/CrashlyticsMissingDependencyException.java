package com.crashlytics.android;

import com.crashlytics.android.internal.ci;
import com.crashlytics.android.internal.cl;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class CrashlyticsMissingDependencyException
  extends RuntimeException
{
  private static final long serialVersionUID = -1151536370019872859L;
  
  CrashlyticsMissingDependencyException(String paramString1, String paramString2)
  {
    super(a(paramString1, paramString2));
  }
  
  private static String a(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      localStringBuilder.append("\nThis app relies on Crashlytics. Configure your build environment here: \n");
      localStringBuilder.append(String.format("https://crashlytics.com/register/%s/android/%s", new Object[] { URLEncoder.encode(paramString1, "UTF-8"), URLEncoder.encode(paramString2, "UTF-8") }) + "\n");
      return localStringBuilder.toString();
    }
    catch (UnsupportedEncodingException paramString1)
    {
      for (;;)
      {
        cl.a().b().a("Crashlytics", "Could not find UTF-8 encoding.", paramString1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.CrashlyticsMissingDependencyException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
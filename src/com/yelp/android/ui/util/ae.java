package com.yelp.android.ui.util;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.yelp.android.cf.a;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class ae
{
  private Uri a;
  private String b;
  private String c;
  private Set<ae.a> d;
  private List<String> e;
  
  private ae(Intent paramIntent)
  {
    a = a.b(paramIntent.getData());
    b = paramIntent.getAction();
    c = paramIntent.getType();
    d = new HashSet();
    e = new LinkedList();
  }
  
  public static ae a(Intent paramIntent)
  {
    if (paramIntent == null) {
      throw new SecurityException("Intent cannot be null.");
    }
    return new ae(paramIntent);
  }
  
  private boolean a(String paramString1, String paramString2)
  {
    return (paramString1.equals(c(paramString2))) || ((paramString1.equals("android.intent.action.VIEW")) && (paramString2 == null));
  }
  
  private boolean b()
  {
    return (a == null) || (a.getHost() == null) || (a.getHost().isEmpty());
  }
  
  private boolean b(String paramString1, String paramString2)
  {
    return (paramString1.equals(c(paramString2))) || (("http".equals(paramString1)) && ("https".equals(paramString2)));
  }
  
  private static String c(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    return str;
  }
  
  private boolean c()
  {
    if (a == null) {}
    while (!"yelp-app-indexing".equals(a.getScheme())) {
      return false;
    }
    if ("android.intent.action.VIEW".equals(b))
    {
      Iterator localIterator = e.iterator();
      while (localIterator.hasNext()) {
        if (((String)localIterator.next()).equals(a.getHost())) {
          return true;
        }
      }
    }
    throw new SecurityException("The intent does not conform to the app-indexing contract.Expected one of <host=" + e + ">, got <host=" + a.getHost() + ">. " + "Expected <action=" + "android.intent.action.VIEW" + ">, got <action=" + b + ">.");
  }
  
  private boolean c(String paramString1, String paramString2)
  {
    return (paramString1.equals(c(paramString2))) || ((c(paramString2).startsWith(paramString1)) && (!paramString1.isEmpty()));
  }
  
  private String d()
  {
    if (a == null) {
      return null;
    }
    return a.toString();
  }
  
  private String e()
  {
    if (a == null) {}
    for (String str1 = "";; str1 = a.getPath())
    {
      String str2 = str1;
      if (str1.startsWith("//")) {
        str2 = str1.substring(1);
      }
      return str2;
    }
  }
  
  private String f()
  {
    if (a == null) {
      return "";
    }
    return a.getScheme();
  }
  
  public ae a()
  {
    if (c()) {
      return this;
    }
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext())
    {
      ae.a locala = (ae.a)localIterator.next();
      if ((a(locala.a(), b)) && (b(locala.b(), f())) && ((b()) || (a.a(a))) && (e().startsWith(locala.c())) && (c(locala.d(), c))) {
        return this;
      }
    }
    throw new SecurityException("No valid contract was found for <action=" + b + ">, <uri=" + d() + ">, <mime=" + c + ">.");
  }
  
  public ae a(String paramString)
  {
    if ((a == null) || (TextUtils.isEmpty(a.getQueryParameter(paramString)))) {
      throw new SecurityException("Invalid <key=" + paramString + "> in <uri=" + d() + ">.");
    }
    return this;
  }
  
  public ae a(String paramString1, String paramString2, String paramString3)
  {
    a(paramString1, paramString2, paramString3, null);
    return this;
  }
  
  public ae a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    d.add(new ae.a(paramString1, paramString2, paramString3, paramString4));
    return this;
  }
  
  public ae a(String... paramVarArgs)
  {
    e.addAll(Arrays.asList(paramVarArgs));
    return this;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
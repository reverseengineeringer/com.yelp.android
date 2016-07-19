package com.yelp.android.services;

import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import java.util.Comparator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class e
{
  private static final String[] a = { "com.android.mms", "com.whatsapp", "com.google.android.talk", "com.facebook.katana", "com.google.android.gm", "com.google.android.apps.docs", "com.yelp.android" };
  
  public static String a(String paramString1, String paramString2)
  {
    return "<a href=\"" + paramString2 + "?ref=yelp-android\">" + paramString1 + "</a>";
  }
  
  public static class a
  {
    private static final Pattern[] a = { Pattern.compile("^com\\.twitter\\.android$"), Pattern.compile("^com\\.hootsuite\\.droid.*$"), Pattern.compile("^com\\.seesmic$"), Pattern.compile("^com\\.swift_app\\.app$"), Pattern.compile("^jp\\.r246\\.twicca$"), Pattern.compile("^com\\.handmark\\.tweetcaster.*$"), Pattern.compile("^com\\.twidro(i|y)d.*$"), Pattern.compile("^com\\.thedeck\\.android\\.app$"), Pattern.compile("^.*(tweet)|(twitter).*$") };
    private static final Pattern b = Pattern.compile(".*((mms)|(sms)|(messaging)).*");
    private static final Pattern c = Pattern.compile(".*(mail).*");
    private final ActivityInfo d;
    
    public a(ActivityInfo paramActivityInfo)
    {
      d = paramActivityInfo;
    }
    
    public boolean a()
    {
      return (d.name.equals("com.facebook.katana.ShareLinkActivity")) || (d.packageName.equals("com.facebook.katana"));
    }
    
    public boolean b()
    {
      return f().equals("com.google.android.gm");
    }
    
    public boolean c()
    {
      boolean bool2 = false;
      Pattern[] arrayOfPattern = a;
      int j = arrayOfPattern.length;
      int i = 0;
      for (;;)
      {
        boolean bool1 = bool2;
        if (i < j)
        {
          if (arrayOfPattern[i].matcher(f()).matches()) {
            bool1 = true;
          }
        }
        else {
          return bool1;
        }
        i += 1;
      }
    }
    
    public boolean d()
    {
      return b.matcher(f()).matches();
    }
    
    public boolean e()
    {
      return (c.matcher(f()).matches()) || (b());
    }
    
    public String f()
    {
      return d.packageName;
    }
  }
  
  public static class b
    implements Comparator<ResolveInfo>
  {
    private final PackageManager a;
    
    public b(PackageManager paramPackageManager)
    {
      a = paramPackageManager;
    }
    
    private int a(ResolveInfo paramResolveInfo)
    {
      int i = 0;
      while (i < e.a().length)
      {
        if (activityInfo.packageName.startsWith(e.a()[i])) {
          return i;
        }
        i += 1;
      }
      return e.a().length;
    }
    
    public int a(ResolveInfo paramResolveInfo1, ResolveInfo paramResolveInfo2)
    {
      int i = a(paramResolveInfo1);
      int j = a(paramResolveInfo2);
      if (i == j) {
        return String.valueOf(paramResolveInfo1.loadLabel(a)).compareTo(String.valueOf(paramResolveInfo2.loadLabel(a)));
      }
      return i - j;
    }
    
    public boolean equals(Object paramObject)
    {
      return paramObject instanceof b;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
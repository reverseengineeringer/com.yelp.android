package com.yelp.android.services;

import android.content.pm.ActivityInfo;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class e$a
{
  private static final Pattern[] a = { Pattern.compile("^com\\.twitter\\.android$"), Pattern.compile("^com\\.hootsuite\\.droid.*$"), Pattern.compile("^com\\.seesmic$"), Pattern.compile("^com\\.swift_app\\.app$"), Pattern.compile("^jp\\.r246\\.twicca$"), Pattern.compile("^com\\.handmark\\.tweetcaster.*$"), Pattern.compile("^com\\.twidro(i|y)d.*$"), Pattern.compile("^com\\.thedeck\\.android\\.app$"), Pattern.compile("^.*(tweet)|(twitter).*$") };
  private static final Pattern b = Pattern.compile(".*((mms)|(sms)|(messaging)).*");
  private static final Pattern c = Pattern.compile(".*(mail).*");
  private final ActivityInfo d;
  
  public e$a(ActivityInfo paramActivityInfo)
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

/* Location:
 * Qualified Name:     com.yelp.android.services.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
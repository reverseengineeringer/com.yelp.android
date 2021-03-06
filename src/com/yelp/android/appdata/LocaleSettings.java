package com.yelp.android.appdata;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.text.TextUtils;
import com.yelp.android.co.a.i;
import com.yelp.android.co.a.j;
import com.yelp.android.util.YelpLog;
import java.util.Comparator;
import java.util.Currency;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

public class LocaleSettings
{
  public static final TreeSet<String> a = new TreeSet(String.CASE_INSENSITIVE_ORDER);
  public static final List<Locale> b;
  public static final Locale[] c;
  public static final Locale[] d;
  public static final Locale[] e;
  public static final Locale[] f;
  public static final Locale[] g;
  public static final Locale[] h;
  public static final Locale[] i;
  public static final TreeMap<String, Currency> j;
  public static final Locale[] k = new Locale[0];
  public static final Locale[] l = { Locale.JAPAN, Locale.TAIWAN, new Locale("", "ES") };
  private SharedPreferences m;
  private Locale n;
  private String o;
  
  static
  {
    a.add(Locale.US.getCountry());
    a.add(Locale.CANADA.getCountry());
    a.add(Locale.UK.getCountry());
    a.add(Locale.GERMANY.getCountry());
    a.add(Locale.FRANCE.getCountry());
    a.add(Locale.ITALY.getCountry());
    a.add("BE");
    a.add("CH");
    a.add("ES");
    a.add("IE");
    a.add("NL");
    a.add("AT");
    a.add("AU");
    a.add("SE");
    a.add("DK");
    a.add("NO");
    a.add("FI");
    a.add("SG");
    a.add("PL");
    a.add("TR");
    a.add("NZ");
    a.add("CZ");
    a.add("BR");
    a.add("PT");
    a.add("MX");
    a.add("JP");
    a.add("AR");
    a.add("CL");
    a.add("HK");
    a.add("TW");
    a.add("MY");
    a.add("PH");
    b = new LinkedList();
    b.add(Locale.CANADA);
    b.add(Locale.ENGLISH);
    b.add(Locale.FRENCH);
    b.add(Locale.GERMAN);
    b.add(Locale.ITALIAN);
    b.add(Locale.UK);
    b.add(new Locale("cs"));
    b.add(new Locale("da"));
    b.add(new Locale("de", "AT"));
    b.add(new Locale("de", "CH"));
    b.add(new Locale("en", "AU"));
    b.add(new Locale("en", "BE"));
    b.add(new Locale("en", "HK"));
    b.add(new Locale("en", "IE"));
    b.add(new Locale("en", "MY"));
    b.add(new Locale("en", "NZ"));
    b.add(new Locale("en", "PH"));
    b.add(new Locale("en", "SG"));
    b.add(new Locale("es"));
    b.add(new Locale("es", "AR"));
    b.add(new Locale("es", "CL"));
    b.add(new Locale("es", "MX"));
    b.add(new Locale("es", "US"));
    b.add(new Locale("fi"));
    b.add(new Locale("fil"));
    b.add(new Locale("fr", "BE"));
    b.add(new Locale("fr", "CA"));
    b.add(new Locale("fr", "CH"));
    b.add(new Locale("it", "CH"));
    b.add(new Locale("ja"));
    b.add(new Locale("ms"));
    b.add(new Locale("nb"));
    b.add(new Locale("nl"));
    b.add(new Locale("nl", "BE"));
    b.add(new Locale("pl"));
    b.add(new Locale("pt"));
    b.add(new Locale("pt", "PT"));
    b.add(new Locale("sv"));
    b.add(new Locale("sv", "FI"));
    b.add(new Locale("tl"));
    b.add(new Locale("tr"));
    b.add(new Locale("zh"));
    b.add(new Locale("zh", "CN"));
    b.add(new Locale("zh", "TW"));
    c = new Locale[] { Locale.US, Locale.UK };
    d = new Locale[] { Locale.ENGLISH };
    e = new Locale[] { Locale.ENGLISH };
    f = new Locale[] { new Locale("", "AR"), new Locale("", "BE"), new Locale("", "BR"), new Locale("", "CL"), new Locale("", "HK"), new Locale("", "IE"), new Locale("", "IT"), new Locale("", "NO"), new Locale("", "NZ"), new Locale("", "PH"), new Locale("", "PT"), new Locale("", "SE"), new Locale("", "TR"), new Locale("", "TW"), new Locale("es", "US") };
    g = new Locale[] { Locale.JAPAN, new Locale("", "HK") };
    h = new Locale[] { Locale.JAPAN };
    i = new Locale[] { Locale.US, Locale.CANADA };
    j = new TreeMap();
    j.put("CH", Currency.getInstance("USD"));
  }
  
  public LocaleSettings(Locale paramLocale)
  {
    a(paramLocale);
  }
  
  public static boolean a(String paramString)
  {
    return Locale.JAPAN.getCountry().equalsIgnoreCase(paramString);
  }
  
  public static Set<String> b()
  {
    TreeSet localTreeSet = new TreeSet();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      localTreeSet.add(d((Locale)localIterator.next()));
    }
    return localTreeSet;
  }
  
  public static boolean b(String paramString)
  {
    return "HK".equalsIgnoreCase(paramString);
  }
  
  private SharedPreferences c(Context paramContext)
  {
    if (m == null) {
      m = paramContext.getSharedPreferences("yelp.android.locale", 0);
    }
    return m;
  }
  
  public static final Locale c(Locale paramLocale)
  {
    Locale localLocale = paramLocale;
    if (!b.contains(paramLocale))
    {
      paramLocale = new Locale(paramLocale.getLanguage());
      if (!b.contains(paramLocale)) {
        localLocale = Locale.ENGLISH;
      }
    }
    else
    {
      return localLocale;
    }
    return paramLocale;
  }
  
  public static boolean c(String paramString)
  {
    return (b(paramString)) || (Locale.TAIWAN.getCountry().equalsIgnoreCase(paramString));
  }
  
  private static String d(Locale paramLocale)
  {
    return String.format("category_%s", new Object[] { paramLocale }).toLowerCase(Locale.getDefault());
  }
  
  public static boolean d(String paramString)
  {
    boolean bool2 = false;
    Locale[] arrayOfLocale = g;
    int i2 = arrayOfLocale.length;
    int i1 = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i1 < i2)
      {
        if (arrayOfLocale[i1].getCountry().equalsIgnoreCase(paramString)) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  public static boolean e(String paramString)
  {
    boolean bool2 = false;
    Locale[] arrayOfLocale = h;
    int i2 = arrayOfLocale.length;
    int i1 = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i1 < i2)
      {
        if (arrayOfLocale[i1].getCountry().equalsIgnoreCase(paramString)) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  public static boolean f(String paramString)
  {
    boolean bool2 = false;
    Locale[] arrayOfLocale = l;
    int i2 = arrayOfLocale.length;
    int i1 = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i1 < i2)
      {
        if (arrayOfLocale[i1].getCountry().equalsIgnoreCase(paramString)) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  public static boolean g(String paramString)
  {
    Locale[] arrayOfLocale = k;
    int i2 = arrayOfLocale.length;
    int i1 = 0;
    while (i1 < i2)
    {
      if (arrayOfLocale[i1].getLanguage().equalsIgnoreCase(paramString)) {
        return false;
      }
      i1 += 1;
    }
    return true;
  }
  
  private boolean m()
  {
    Locale[] arrayOfLocale = c;
    int i2 = arrayOfLocale.length;
    int i1 = 0;
    while (i1 < i2)
    {
      Locale localLocale = arrayOfLocale[i1];
      if ((n.equals(localLocale)) || (localLocale.getCountry().equalsIgnoreCase(n.getCountry()))) {
        return false;
      }
      i1 += 1;
    }
    return true;
  }
  
  public String a()
  {
    return d(c(n));
  }
  
  public String a(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramInt);
    String str = g();
    int i1 = 0;
    while (i1 < paramInt)
    {
      localStringBuilder.append(str);
      i1 += 1;
    }
    return localStringBuilder.toString().trim();
  }
  
  public String a(Context paramContext, int paramInt)
  {
    if (paramInt == 0) {
      return "";
    }
    return paramContext.getResources().getQuantityString(a.i.dollar_signs, paramInt, new Object[] { Integer.valueOf(paramInt), o });
  }
  
  public String a(Context paramContext, int paramInt, String paramString)
  {
    if (paramInt == 0) {
      return "";
    }
    if (paramString != null)
    {
      paramString = new Locale(Locale.getDefault().getDisplayLanguage(), paramString);
      return paramContext.getResources().getQuantityString(a.i.dollar_signs, paramInt, new Object[] { Integer.valueOf(paramInt), b(paramString) });
    }
    return a(paramContext, paramInt);
  }
  
  public void a(DISTANCE_UNIT paramDISTANCE_UNIT, Context paramContext)
  {
    c(paramContext).edit().putInt("distance_unit", paramDISTANCE_UNIT.ordinal()).apply();
  }
  
  public void a(Locale paramLocale)
  {
    n = Locale.US;
    Locale localLocale = paramLocale;
    if (paramLocale == null) {
      localLocale = Locale.getDefault();
    }
    if (a.contains(localLocale.getCountry()))
    {
      YelpLog.i(this, "Valid locale:" + localLocale);
      n = localLocale;
    }
    o = b(localLocale);
  }
  
  public boolean a(Context paramContext)
  {
    switch (1.a[b(paramContext).ordinal()])
    {
    default: 
      return m();
    case 1: 
      return true;
    }
    return false;
  }
  
  public DISTANCE_UNIT b(Context paramContext)
  {
    int i1 = DISTANCE_UNIT.AUTOMATIC.ordinal();
    i1 = c(paramContext).getInt("distance_unit", i1);
    return DISTANCE_UNIT.values()[i1];
  }
  
  public String b(Locale paramLocale)
  {
    try
    {
      Currency localCurrency = (Currency)j.get(paramLocale.getCountry());
      if (localCurrency == null) {
        localCurrency = Currency.getInstance(paramLocale);
      }
      for (;;)
      {
        if (localCurrency.equals(Currency.getInstance(Locale.US))) {
          paramLocale = Locale.US;
        }
        for (;;)
        {
          Object localObject = localCurrency.getSymbol(paramLocale);
          paramLocale = (Locale)localObject;
          if ("¤".equals(localObject)) {
            paramLocale = localCurrency.getSymbol();
          }
          localObject = paramLocale;
          if (paramLocale.length() != 1) {
            localObject = localCurrency.getSymbol(Locale.US);
          }
          if (localObject == null) {
            break;
          }
          paramLocale = (Locale)localObject;
          if (((String)localObject).length() == 1) {
            return paramLocale;
          }
          break;
          if (localCurrency.equals(Currency.getInstance(Locale.CANADA))) {
            paramLocale = Locale.CANADA;
          }
        }
      }
    }
    catch (RuntimeException paramLocale)
    {
      return "$";
    }
    paramLocale = "$";
    return paramLocale;
  }
  
  public boolean c()
  {
    boolean bool2 = false;
    Locale[] arrayOfLocale = d;
    int i2 = arrayOfLocale.length;
    int i1 = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i1 < i2)
      {
        if (arrayOfLocale[i1].getLanguage().equalsIgnoreCase(n.getLanguage())) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  public boolean d()
  {
    Locale[] arrayOfLocale = e;
    int i2 = arrayOfLocale.length;
    int i1 = 0;
    while (i1 < i2)
    {
      Locale localLocale = arrayOfLocale[i1];
      if ((n.equals(localLocale)) || (localLocale.getLanguage().equalsIgnoreCase(n.getLanguage()))) {
        return false;
      }
      i1 += 1;
    }
    return true;
  }
  
  public boolean e()
  {
    Locale[] arrayOfLocale = f;
    int i2 = arrayOfLocale.length;
    int i1 = 0;
    while (i1 < i2)
    {
      Locale localLocale = arrayOfLocale[i1];
      if (localLocale.equals(n)) {}
      while ((TextUtils.isEmpty(localLocale.getLanguage())) && (localLocale.getCountry().equalsIgnoreCase(n.getCountry()))) {
        return false;
      }
      i1 += 1;
    }
    return true;
  }
  
  public boolean f()
  {
    boolean bool2 = false;
    String str = n.getCountry();
    Locale[] arrayOfLocale = i;
    int i2 = arrayOfLocale.length;
    int i1 = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i1 < i2)
      {
        if (arrayOfLocale[i1].getCountry().equalsIgnoreCase(str)) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  public String g()
  {
    return o;
  }
  
  public Locale h()
  {
    return n;
  }
  
  public boolean i()
  {
    return n.getLanguage().equalsIgnoreCase(Locale.JAPANESE.getLanguage());
  }
  
  public boolean j()
  {
    return n.getLanguage().equalsIgnoreCase(Locale.CHINESE.getLanguage());
  }
  
  public boolean k()
  {
    return n.getLanguage().equalsIgnoreCase(Locale.ENGLISH.getLanguage());
  }
  
  public boolean l()
  {
    return (j()) || (i());
  }
  
  public static enum DISTANCE_UNIT
  {
    AUTOMATIC(a.j.distance_unit_automatic),  KILOMETERS(a.j.distance_unit_kilometers),  MILES(a.j.distance_unit_miles);
    
    private int mResourceName;
    
    private DISTANCE_UNIT(int paramInt)
    {
      mResourceName = paramInt;
    }
    
    public static String[] getResourceNames(Context paramContext)
    {
      int j = values().length;
      String[] arrayOfString = new String[j];
      int i = 0;
      while (i < j)
      {
        arrayOfString[i] = paramContext.getString(valuesmResourceName);
        i += 1;
      }
      return arrayOfString;
    }
  }
  
  public static final class a
    implements Comparator<Locale>
  {
    public int a(Locale paramLocale1, Locale paramLocale2)
    {
      if (paramLocale1.equals(paramLocale2)) {
        return 0;
      }
      return String.valueOf(paramLocale1.getLanguage()).compareToIgnoreCase(String.valueOf(paramLocale2.getLanguage()));
    }
  }
  
  public static final class b
    implements Comparator<Locale>
  {
    public int a(Locale paramLocale1, Locale paramLocale2)
    {
      if (paramLocale1.equals(paramLocale2)) {
        return 0;
      }
      return String.valueOf(paramLocale1).compareToIgnoreCase(String.valueOf(paramLocale2));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.LocaleSettings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
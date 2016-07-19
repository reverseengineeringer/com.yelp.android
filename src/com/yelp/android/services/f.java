package com.yelp.android.services;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.serializable.YelpHoursPair;
import com.yelp.android.ui.util.as;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public class f
{
  public static a a(Context paramContext, YelpHoursPair[] paramArrayOfYelpHoursPair, TimeZone paramTimeZone)
  {
    return a(paramContext, paramArrayOfYelpHoursPair, paramTimeZone, System.currentTimeMillis());
  }
  
  static a a(Context paramContext, YelpHoursPair[] paramArrayOfYelpHoursPair, TimeZone paramTimeZone, long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance(paramTimeZone);
    localCalendar.setTimeInMillis(paramLong);
    a locala = new a();
    if ((paramArrayOfYelpHoursPair == null) || (paramArrayOfYelpHoursPair.length == 0))
    {
      locala.a(false);
      return locala;
    }
    locala.e(a(paramArrayOfYelpHoursPair, paramTimeZone));
    paramTimeZone = new StringBuilder(100);
    paramLong = d(b((Calendar)localCalendar.clone()));
    long l1 = d(c((Calendar)localCalendar.clone()));
    int j = 0;
    int i = 0;
    if (j < paramArrayOfYelpHoursPair.length)
    {
      if (!a(paramArrayOfYelpHoursPair[j].c(), paramLong, l1)) {
        break label405;
      }
      if (i != 0) {
        paramTimeZone.append(", ");
      }
      paramTimeZone.append(a(paramContext, paramArrayOfYelpHoursPair[j], localCalendar));
      i = 1;
    }
    label218:
    label403:
    label405:
    for (;;)
    {
      j += 1;
      break;
      if (i != 0)
      {
        locala.a(paramTimeZone.toString());
        locala.a(true);
        locala.d(false);
        locala.c(false);
        if (!locala.h()) {
          break label218;
        }
        locala.b(true);
      }
      for (;;)
      {
        return locala;
        locala.a("");
        break;
        locala.b(false);
        paramLong = d((Calendar)localCalendar.clone());
        i = 0;
        for (;;)
        {
          if (i >= paramArrayOfYelpHoursPair.length) {
            break label403;
          }
          l1 = paramArrayOfYelpHoursPair[i].c() - 30;
          long l2 = paramArrayOfYelpHoursPair[i].b() - 30;
          if ((a(paramLong, paramArrayOfYelpHoursPair[i].c(), paramArrayOfYelpHoursPair[i].b())) && (paramLong != paramArrayOfYelpHoursPair[i].b()))
          {
            locala.b(true);
            if (!a(paramLong, l2, paramArrayOfYelpHoursPair[i].b())) {
              break;
            }
            locala.d(true);
            locala.b(paramArrayOfYelpHoursPair[i].b() - paramLong);
            break;
          }
          if (a(paramLong, l1, paramArrayOfYelpHoursPair[i].c()))
          {
            locala.c(true);
            locala.a(paramArrayOfYelpHoursPair[i].c() - paramLong);
            break;
          }
          i += 1;
        }
      }
    }
  }
  
  public static String a(Context paramContext, int paramInt, Date paramDate)
  {
    return a(paramContext.getString(paramInt), paramDate);
  }
  
  @SuppressLint({"StringFormatMatches"})
  private static String a(Context paramContext, YelpHoursPair paramYelpHoursPair, Calendar paramCalendar)
  {
    TimeZone localTimeZone = paramCalendar.getTimeZone();
    Object localObject1 = a(paramYelpHoursPair.c(), localTimeZone);
    paramYelpHoursPair = a(paramYelpHoursPair.b(), localTimeZone);
    Locale localLocale = AppData.b().g().h();
    Object localObject2 = DateFormat.getTimeInstance(3, localLocale);
    ((DateFormat)localObject2).setTimeZone(localTimeZone);
    if (AppData.b().g().c()) {
      localObject1 = a(paramContext, (Calendar)localObject1);
    }
    for (paramYelpHoursPair = a(paramContext, paramYelpHoursPair);; paramYelpHoursPair = ((DateFormat)localObject2).format(paramYelpHoursPair.getTime()))
    {
      localObject2 = TimeZone.getDefault();
      paramCalendar = localTimeZone.getDisplayName(localTimeZone.inDaylightTime(paramCalendar.getTime()), 0, localLocale);
      int j = 2131166300;
      int i = j;
      if (!localObject2.equals(localTimeZone))
      {
        i = j;
        if (paramCalendar.matches("[^0-9]*")) {
          i = 2131166301;
        }
      }
      return paramContext.getString(i, new Object[] { localObject1, paramYelpHoursPair, paramCalendar });
      localObject1 = ((DateFormat)localObject2).format(((Calendar)localObject1).getTime());
    }
  }
  
  private static String a(Context paramContext, Calendar paramCalendar)
  {
    DateFormat localDateFormat = DateFormat.getTimeInstance(3, AppData.b().g().h());
    localDateFormat.setTimeZone(paramCalendar.getTimeZone());
    int i = paramCalendar.get(11);
    int j = paramCalendar.get(12);
    if ((i == 12) && (j == 0)) {
      return paramContext.getResources().getString(2131166268);
    }
    if ((i == 0) && (j == 0)) {
      return paramContext.getResources().getString(2131166157);
    }
    return localDateFormat.format(paramCalendar.getTime());
  }
  
  public static String a(Context paramContext, TimeZone paramTimeZone, long paramLong)
  {
    Date localDate1 = new Date();
    localDate1.setDate(localDate1.getDate() + 1);
    Date localDate2 = new Date(1000L * paramLong);
    if (a(new Date(), localDate2, paramTimeZone)) {
      return paramContext.getResources().getString(2131166712);
    }
    if (a(localDate1, localDate2, paramTimeZone)) {
      return paramContext.getResources().getString(2131166715);
    }
    return a(paramContext.getResources().getString(2131165873), paramTimeZone, paramLong);
  }
  
  public static String a(String paramString, Date paramDate)
  {
    Locale localLocale = AppData.b().g().h();
    return new SimpleDateFormat(as.a(paramString, localLocale), localLocale).format(paramDate);
  }
  
  public static String a(String paramString, TimeZone paramTimeZone, long paramLong)
  {
    paramString = new SimpleDateFormat(paramString, AppData.b().g().h());
    paramString.setTimeZone(paramTimeZone);
    return paramString.format(new Date(1000L * paramLong));
  }
  
  private static Calendar a(int paramInt, TimeZone paramTimeZone)
  {
    paramTimeZone = a(Calendar.getInstance(paramTimeZone));
    int i = paramInt / 1440;
    paramInt %= 1440;
    int j = paramInt / 60;
    paramTimeZone.set(5, i + paramTimeZone.get(5));
    paramTimeZone.set(11, paramTimeZone.get(11) + j);
    paramTimeZone.set(12, paramTimeZone.get(12) + paramInt % 60);
    return paramTimeZone;
  }
  
  public static Calendar a(Calendar paramCalendar)
  {
    paramCalendar.set(10, 0);
    paramCalendar.set(11, 0);
    paramCalendar.set(12, 0);
    paramCalendar.set(13, 0);
    paramCalendar.set(14, 0);
    while (paramCalendar.get(7) != 2) {
      paramCalendar.add(5, -1);
    }
    return paramCalendar;
  }
  
  public static Calendar a(Calendar paramCalendar, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramCalendar.get(11);
    if ((i >= paramInt2) && (i < paramInt3)) {
      paramCalendar.setTime(a(paramCalendar.getTime(), paramInt1));
    }
    for (;;)
    {
      paramCalendar.clear(13);
      paramCalendar.clear(14);
      return paramCalendar;
      paramCalendar.set(11, paramInt2);
      paramCalendar.set(12, 0);
      if (i >= paramInt3) {
        paramCalendar.add(5, 1);
      }
    }
  }
  
  public static Date a(Date paramDate)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramDate.getTime());
    int i = localCalendar.getTimeZone().getOffset(paramDate.getTime());
    localCalendar.setTimeInMillis(paramDate.getTime() + i);
    return new Date(localCalendar.getTimeInMillis());
  }
  
  public static Date a(Date paramDate, int paramInt)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramDate.getTime());
    int i = localCalendar.get(12) % paramInt;
    if (i != 0) {
      localCalendar.add(12, paramInt - i);
    }
    localCalendar.clear(13);
    localCalendar.clear(14);
    return new Date(localCalendar.getTimeInMillis());
  }
  
  public static boolean a(long paramLong1, long paramLong2, long paramLong3)
  {
    boolean bool = false;
    if (paramLong3 > paramLong2) {
      return (paramLong2 <= paramLong1) && (paramLong1 <= paramLong3);
    }
    if ((paramLong2 <= paramLong1) || (paramLong1 <= paramLong3)) {
      bool = true;
    }
    return bool;
  }
  
  public static boolean a(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    int i = paramCalendar1.get(7);
    int j = paramCalendar1.get(11);
    int k = paramCalendar1.get(12);
    int m = paramCalendar2.get(7);
    int n = paramCalendar2.get(11);
    int i1 = paramCalendar2.get(12);
    return (i == m) && (j == n) && (k == i1);
  }
  
  public static boolean a(Date paramDate1, Date paramDate2, TimeZone paramTimeZone)
  {
    if (paramTimeZone.getRawOffset() != TimeZone.getDefault().getRawOffset()) {}
    while ((Math.abs((paramDate2.getTime() - paramDate1.getTime()) / 1000.0D / 86400.0D) >= 1.0D) || (paramDate1.getDate() != paramDate2.getDate())) {
      return false;
    }
    return true;
  }
  
  public static boolean a(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt == null) {}
    for (;;)
    {
      return false;
      int j = Calendar.getInstance().get(1);
      int k = paramArrayOfInt.length;
      int i = 0;
      while (i < k)
      {
        if (j == paramArrayOfInt[i]) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  public static boolean a(YelpHoursPair[] paramArrayOfYelpHoursPair, TimeZone paramTimeZone)
  {
    boolean bool = true;
    if (paramArrayOfYelpHoursPair.length == 0) {
      return false;
    }
    Calendar localCalendar2 = (Calendar)a(paramArrayOfYelpHoursPair[0].c(), paramTimeZone).clone();
    Calendar localCalendar1 = a(paramArrayOfYelpHoursPair[0].b(), paramTimeZone);
    int i = 1;
    if (i < paramArrayOfYelpHoursPair.length) {
      if (a(a(paramArrayOfYelpHoursPair[i].c(), paramTimeZone), localCalendar1)) {}
    }
    for (i = 0;; i = 1)
    {
      if ((i != 0) && (a(localCalendar2, localCalendar1))) {}
      for (;;)
      {
        return bool;
        localCalendar1 = a(paramArrayOfYelpHoursPair[i].b(), paramTimeZone);
        i += 1;
        break;
        bool = false;
      }
    }
  }
  
  public static Calendar b(Calendar paramCalendar)
  {
    paramCalendar.set(10, 0);
    paramCalendar.set(11, 0);
    paramCalendar.set(12, 0);
    paramCalendar.set(13, 0);
    paramCalendar.set(14, 0);
    return paramCalendar;
  }
  
  public static Date b(Date paramDate)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramDate.getTime());
    int i = localCalendar.getTimeZone().getOffset(paramDate.getTime());
    localCalendar.setTimeInMillis(paramDate.getTime() - i);
    return new Date(localCalendar.getTimeInMillis());
  }
  
  public static Calendar c(Calendar paramCalendar)
  {
    paramCalendar = b(paramCalendar);
    paramCalendar.add(5, 1);
    return paramCalendar;
  }
  
  public static long d(Calendar paramCalendar)
  {
    TimeZone localTimeZone = paramCalendar.getTimeZone();
    int i = localTimeZone.getOffset(paramCalendar.getTimeInMillis());
    int j = localTimeZone.getOffset(paramCalendar.getTimeInMillis() - 86400000L);
    return (paramCalendar.getTimeInMillis() + (i - j) - a((Calendar)paramCalendar.clone()).getTimeInMillis()) / 60000L;
  }
  
  public static class a
  {
    private boolean a;
    private String b;
    private boolean c;
    private boolean d;
    private long e;
    private boolean f;
    private long g;
    private boolean h;
    
    public void a(long paramLong)
    {
      e = paramLong;
    }
    
    public void a(String paramString)
    {
      b = paramString;
    }
    
    public void a(boolean paramBoolean)
    {
      a = paramBoolean;
    }
    
    public boolean a()
    {
      return a;
    }
    
    public String b()
    {
      return b;
    }
    
    public void b(long paramLong)
    {
      g = paramLong;
    }
    
    public void b(boolean paramBoolean)
    {
      c = paramBoolean;
    }
    
    public void c(boolean paramBoolean)
    {
      d = paramBoolean;
    }
    
    public boolean c()
    {
      return (h) || (((c) || (d)) && (!f));
    }
    
    public void d(boolean paramBoolean)
    {
      f = paramBoolean;
    }
    
    public boolean d()
    {
      return d;
    }
    
    public long e()
    {
      return e;
    }
    
    public void e(boolean paramBoolean)
    {
      h = paramBoolean;
    }
    
    public boolean f()
    {
      return (f) && (!h);
    }
    
    public long g()
    {
      return g;
    }
    
    public boolean h()
    {
      return h;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.yelp.android.services;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.serializable.YelpHoursPair;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public class r
{
  public static long a()
  {
    return d(Calendar.getInstance());
  }
  
  public static s a(Context paramContext, YelpHoursPair[] paramArrayOfYelpHoursPair, TimeZone paramTimeZone)
  {
    return a(paramContext, paramArrayOfYelpHoursPair, paramTimeZone, System.currentTimeMillis());
  }
  
  static s a(Context paramContext, YelpHoursPair[] paramArrayOfYelpHoursPair, TimeZone paramTimeZone, long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance(paramTimeZone);
    localCalendar.setTimeInMillis(paramLong);
    s locals = new s();
    if ((paramArrayOfYelpHoursPair == null) || (paramArrayOfYelpHoursPair.length == 0))
    {
      locals.a(false);
      return locals;
    }
    locals.e(a(paramArrayOfYelpHoursPair, paramTimeZone));
    paramTimeZone = new StringBuilder(100);
    paramLong = d(b((Calendar)localCalendar.clone()));
    long l1 = d(c((Calendar)localCalendar.clone()));
    int j = 0;
    int i = 0;
    if (j < paramArrayOfYelpHoursPair.length)
    {
      if (!a(paramArrayOfYelpHoursPair[j].getOpen(), paramLong, l1)) {
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
        locals.a(paramTimeZone.toString());
        locals.a(true);
        locals.d(false);
        locals.c(false);
        if (!locals.h()) {
          break label218;
        }
        locals.b(true);
      }
      for (;;)
      {
        return locals;
        locals.a("");
        break;
        locals.b(false);
        paramLong = d((Calendar)localCalendar.clone());
        i = 0;
        for (;;)
        {
          if (i >= paramArrayOfYelpHoursPair.length) {
            break label403;
          }
          l1 = paramArrayOfYelpHoursPair[i].getOpen() - 30;
          long l2 = paramArrayOfYelpHoursPair[i].getClose() - 30;
          if ((a(paramLong, paramArrayOfYelpHoursPair[i].getOpen(), paramArrayOfYelpHoursPair[i].getClose())) && (paramLong != paramArrayOfYelpHoursPair[i].getClose()))
          {
            locals.b(true);
            if (!a(paramLong, l2, paramArrayOfYelpHoursPair[i].getClose())) {
              break;
            }
            locals.d(true);
            locals.b(paramArrayOfYelpHoursPair[i].getClose() - paramLong);
            break;
          }
          if (a(paramLong, l1, paramArrayOfYelpHoursPair[i].getOpen()))
          {
            locals.c(true);
            locals.a(paramArrayOfYelpHoursPair[i].getOpen() - paramLong);
            break;
          }
          i += 1;
        }
      }
    }
  }
  
  public static String a(Context paramContext, int paramInt, Date paramDate)
  {
    Locale localLocale = AppData.b().g().h();
    return new SimpleDateFormat(paramContext.getString(paramInt), localLocale).format(paramDate);
  }
  
  @SuppressLint({"StringFormatMatches"})
  private static String a(Context paramContext, YelpHoursPair paramYelpHoursPair, Calendar paramCalendar)
  {
    TimeZone localTimeZone = paramCalendar.getTimeZone();
    Object localObject1 = a(paramYelpHoursPair.getOpen(), localTimeZone);
    paramYelpHoursPair = a(paramYelpHoursPair.getClose(), localTimeZone);
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
      int j = 2131166263;
      int i = j;
      if (!localObject2.equals(localTimeZone))
      {
        i = j;
        if (paramCalendar.matches("[^0-9]*")) {
          i = 2131166264;
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
    if (i == 12) {
      return paramContext.getResources().getString(2131166212);
    }
    if (i == 0) {
      return paramContext.getResources().getString(2131166095);
    }
    return localDateFormat.format(paramCalendar.getTime());
  }
  
  public static String a(Context paramContext, TimeZone paramTimeZone, long paramLong)
  {
    Date localDate1 = new Date();
    localDate1.setDate(localDate1.getDate() + 1);
    Date localDate2 = new Date(1000L * paramLong);
    if (a(new Date(), localDate2, paramTimeZone)) {
      return paramContext.getResources().getString(2131166732);
    }
    if (a(localDate1, localDate2, paramTimeZone)) {
      return paramContext.getResources().getString(2131166735);
    }
    return a(paramContext.getResources().getString(2131165785), paramTimeZone, paramLong);
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
    Calendar localCalendar2 = (Calendar)a(paramArrayOfYelpHoursPair[0].getOpen(), paramTimeZone).clone();
    Calendar localCalendar1 = a(paramArrayOfYelpHoursPair[0].getClose(), paramTimeZone);
    int i = 1;
    if (i < paramArrayOfYelpHoursPair.length) {
      if (a(a(paramArrayOfYelpHoursPair[i].getOpen(), paramTimeZone), localCalendar1)) {}
    }
    for (i = 0;; i = 1)
    {
      if ((i != 0) && (a(localCalendar2, localCalendar1))) {}
      for (;;)
      {
        return bool;
        localCalendar1 = a(paramArrayOfYelpHoursPair[i].getClose(), paramTimeZone);
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
}

/* Location:
 * Qualified Name:     com.yelp.android.services.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
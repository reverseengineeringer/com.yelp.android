package com.yelp.android.serializable;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.services.f;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;

public class DisplayGenericSearchFilter
  extends _DisplayGenericSearchFilter
  implements Comparable<DisplayGenericSearchFilter>
{
  public static final JsonParser.DualCreator<DisplayGenericSearchFilter> CREATOR = new DisplayGenericSearchFilter.1();
  
  public static List<CharSequence> a(List<DisplayGenericSearchFilter> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Object localObject = (DisplayGenericSearchFilter)paramList.next();
        if (!((DisplayGenericSearchFilter)localObject).e()) {
          if ((((DisplayGenericSearchFilter)localObject).a().startsWith("RestaurantsPriceRange2.")) && (((DisplayGenericSearchFilter)localObject).d()))
          {
            int i = Integer.parseInt(((DisplayGenericSearchFilter)localObject).a().substring("RestaurantsPriceRange2.".length()));
            localArrayList.add(AppData.b().g().a(i));
          }
          else if ((((DisplayGenericSearchFilter)localObject).c() == GenericSearchFilter.FilterType.OpenNow) && (((DisplayGenericSearchFilter)localObject).d()))
          {
            localObject = (OpenNowGenericSearchFilter)((DisplayGenericSearchFilter)localObject).h();
            if (((OpenNowGenericSearchFilter)localObject).f())
            {
              Calendar localCalendar = f.a(Calendar.getInstance());
              localCalendar.add(12, ((OpenNowGenericSearchFilter)localObject).g());
              localObject = f.a(AppData.b().getString(2131165878), TimeZone.getDefault(), localCalendar.getTimeInMillis() / 1000L);
              localArrayList.add(AppData.b().getString(2131166297, new Object[] { localObject }));
            }
            else
            {
              localArrayList.add(AppData.b().getString(2131165898));
            }
          }
          else if (((DisplayGenericSearchFilter)localObject).d())
          {
            localArrayList.add(((DisplayGenericSearchFilter)localObject).g());
          }
        }
      }
    }
    return localArrayList;
  }
  
  public int a(DisplayGenericSearchFilter paramDisplayGenericSearchFilter)
  {
    if (((f()) && (paramDisplayGenericSearchFilter.f())) || ((!f()) && (!paramDisplayGenericSearchFilter.f()))) {
      return 0;
    }
    if ((f()) && (!paramDisplayGenericSearchFilter.f())) {
      return -1;
    }
    return 1;
  }
  
  public String a()
  {
    return h().e();
  }
  
  public boolean b()
  {
    return (e()) && (c() != null) && ((c() == GenericSearchFilter.FilterType.Boolean) || (c() == GenericSearchFilter.FilterType.OpenNow) || (c() == GenericSearchFilter.FilterType.Platform) || (c() == GenericSearchFilter.FilterType.Reservation));
  }
  
  public GenericSearchFilter.FilterType c()
  {
    return h().a();
  }
  
  public boolean d()
  {
    return h().c();
  }
  
  public boolean e()
  {
    return (i() != null) && (i().c());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.DisplayGenericSearchFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
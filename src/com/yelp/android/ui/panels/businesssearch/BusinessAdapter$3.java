package com.yelp.android.ui.panels.businesssearch;

import android.content.Context;
import android.text.TextUtils;
import com.yelp.android.serializable.RecentCheckIn;
import com.yelp.android.serializable.RecentFriendCheckIns;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.m;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.Calendar;
import java.util.List;

class BusinessAdapter$3
  extends m<T, String[]>
{
  BusinessAdapter$3(BusinessAdapter paramBusinessAdapter) {}
  
  public String[] a(Context paramContext, T paramT)
  {
    paramT = paramT.a();
    if (paramT == null) {}
    do
    {
      return null;
      paramT = paramT.aG();
    } while (paramT == null);
    Object localObject = paramT.c();
    int i;
    if (TextUtils.isEmpty(((RecentCheckIn)((List)localObject).get(0)).b().c())) {
      i = 1;
    }
    RecentCheckIn localRecentCheckIn;
    for (;;)
    {
      if (i < paramT.b())
      {
        if (!TextUtils.isEmpty(((RecentCheckIn)((List)localObject).get(i)).b().c()))
        {
          ((List)localObject).add(0, ((List)localObject).get(i));
          ((List)localObject).remove(i + 1);
        }
      }
      else
      {
        localRecentCheckIn = (RecentCheckIn)((List)localObject).get(0);
        if (((List)localObject).size() <= 1) {
          break;
        }
        paramT = paramContext.getString(2131166828, new Object[] { Integer.valueOf(((List)localObject).size()) });
        paramContext = StringUtils.a(", ", (Iterable)localObject, new BusinessAdapter.3.1(this));
        return new String[] { paramT, paramContext, localRecentCheckIn.b().c() };
      }
      i += 1;
    }
    paramT = Calendar.getInstance();
    localObject = Calendar.getInstance();
    ((Calendar)localObject).setTime(localRecentCheckIn.c());
    paramT.add(10, -1);
    if (paramT.after(localObject)) {}
    for (paramT = paramContext.getString(2131166831, new Object[] { localRecentCheckIn.b().ad() });; paramT = paramContext.getString(2131166830, new Object[] { localRecentCheckIn.b().ad() }))
    {
      paramContext = StringUtils.a(paramContext, StringUtils.Format.LONG, localRecentCheckIn.c());
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesssearch.BusinessAdapter.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
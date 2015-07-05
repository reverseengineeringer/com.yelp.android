package com.yelp.android.ui.panels.businesssearch;

import android.content.Context;
import android.text.TextUtils;
import com.yelp.android.serializable.RecentCheckIn;
import com.yelp.android.serializable.RecentFriendCheckIns;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.x;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.List;

class c
  extends x<T, String[]>
{
  c(BusinessAdapter paramBusinessAdapter) {}
  
  public String[] a(Context paramContext, T paramT)
  {
    paramT = paramT.getBusiness();
    if (paramT == null) {}
    do
    {
      return null;
      paramT = paramT.getRecentCheckInFriends();
    } while (paramT == null);
    List localList = paramT.getUsers();
    int i;
    if (TextUtils.isEmpty(((RecentCheckIn)localList.get(0)).getUser().getUserPhotoUrl()))
    {
      i = 1;
      if (i < paramT.getCount())
      {
        if (TextUtils.isEmpty(((RecentCheckIn)localList.get(i)).getUser().getUserPhotoUrl())) {
          break label199;
        }
        localList.add(0, localList.get(i));
        localList.remove(i + 1);
      }
    }
    RecentCheckIn localRecentCheckIn = (RecentCheckIn)localList.get(0);
    if (localList.size() > 1) {
      paramT = paramContext.getString(2131166865, new Object[] { Integer.valueOf(localList.size()) });
    }
    for (paramContext = StringUtils.a(", ", localList, new d(this));; paramContext = StringUtils.a(paramContext, StringUtils.Format.LONG, localRecentCheckIn.getDateCreated()))
    {
      return new String[] { paramT, paramContext, localRecentCheckIn.getUser().getUserPhotoUrl() };
      label199:
      i += 1;
      break;
      paramT = paramContext.getString(2131166867, new Object[] { localRecentCheckIn.getUser().getName() });
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesssearch.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
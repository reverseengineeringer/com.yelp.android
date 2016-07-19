package com.yelp.android.appwidget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.widget.RemoteViews;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.database.e;
import com.yelp.android.serializable.Category;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.activities.search.SearchBusinessesByList;

public class YelpAppWidgetProvider
  extends AppWidgetProvider
{
  static Intent a(Context paramContext)
  {
    paramContext = SearchBusinessesByList.d(paramContext);
    paramContext.setFlags(268468224);
    return paramContext;
  }
  
  static Intent a(Context paramContext, String paramString)
  {
    paramString = AppData.b().j().a(paramString);
    paramContext = ActivityNearby.a(paramContext, paramString.d(), paramString);
    paramContext.setFlags(268468224);
    return paramContext;
  }
  
  private void a(String paramString)
  {
    AppData.b().k().a("homescreen_widget?utm_source=homescreen_widget&utm_campaign=" + paramString);
  }
  
  private PendingIntent b(Context paramContext, String paramString)
  {
    paramString = new Intent(paramString);
    paramString.setClass(paramContext, getClass());
    return PendingIntent.getBroadcast(paramContext, 0, paramString, 0);
  }
  
  static Intent b(Context paramContext)
  {
    paramContext = ActivityNearby.b(paramContext);
    paramContext.setFlags(268435456);
    return paramContext;
  }
  
  public void onDisabled(Context paramContext)
  {
    super.onDisabled(paramContext);
    if (AppData.b().f().N())
    {
      AppData.a(EventIri.AppWidgetDisabled);
      AppData.b().f().i(false);
    }
  }
  
  public void onEnabled(Context paramContext)
  {
    super.onEnabled(paramContext);
    if (!AppData.b().f().N())
    {
      AppData.a(EventIri.AppWidgetEnabled);
      AppData.b().f().i(true);
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    super.onReceive(paramContext, paramIntent);
    paramIntent = paramIntent.getAction();
    int i = -1;
    switch (paramIntent.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        return;
        if (paramIntent.equals("logo_button_click"))
        {
          i = 0;
          continue;
          if (paramIntent.equals("search_button_click"))
          {
            i = 1;
            continue;
            if (paramIntent.equals("category_restaurants_button_click"))
            {
              i = 2;
              continue;
              if (paramIntent.equals("category_bars_button_click"))
              {
                i = 3;
                continue;
                if (paramIntent.equals("category_coffee_button_click")) {
                  i = 4;
                }
              }
            }
          }
        }
        break;
      }
    }
    AppData.a(EventIri.AppWidgetLogo);
    a("logo_button");
    paramContext.startActivity(b(paramContext));
    return;
    AppData.a(EventIri.AppWidgetSearch);
    a("search_button");
    paramContext.startActivity(a(paramContext));
    return;
    AppData.a(EventIri.AppWidgetCategory, "category", "restaurants");
    a("restaurants_button");
    paramContext.startActivity(a(paramContext, "restaurants"));
    return;
    AppData.a(EventIri.AppWidgetCategory, "category", "bars");
    a("bars_button");
    paramContext.startActivity(a(paramContext, "bars"));
    return;
    AppData.a(EventIri.AppWidgetCategory, "category", "coffee");
    a("coffee_button");
    paramContext.startActivity(a(paramContext, "coffee"));
  }
  
  public void onUpdate(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    super.onUpdate(paramContext, paramAppWidgetManager, paramArrayOfInt);
    int j = paramArrayOfInt.length;
    int i = 0;
    while (i < j)
    {
      int k = paramArrayOfInt[i];
      RemoteViews localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2130903136);
      localRemoteViews.setOnClickPendingIntent(2131689986, b(paramContext, "logo_button_click"));
      localRemoteViews.setOnClickPendingIntent(2131689987, b(paramContext, "category_restaurants_button_click"));
      localRemoteViews.setOnClickPendingIntent(2131689989, b(paramContext, "category_bars_button_click"));
      localRemoteViews.setOnClickPendingIntent(2131689988, b(paramContext, "category_coffee_button_click"));
      localRemoteViews.setOnClickPendingIntent(2131689990, b(paramContext, "search_button_click"));
      paramAppWidgetManager.updateAppWidget(k, localRemoteViews);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appwidget.YelpAppWidgetProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
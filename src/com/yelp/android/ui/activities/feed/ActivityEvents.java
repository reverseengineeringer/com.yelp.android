package com.yelp.android.ui.activities.feed;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.cg.e;
import com.yelp.android.serializable.Event;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.w;
import java.util.ArrayList;

public class ActivityEvents
  extends YelpListActivity
{
  private a a;
  
  public static Intent a(Context paramContext, ArrayList<Event> paramArrayList)
  {
    paramContext = new Intent(paramContext, ActivityEvents.class);
    paramContext.putParcelableArrayListExtra("events", paramArrayList);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent().getParcelableArrayListExtra("events");
    a = new a(null);
    a.a(paramBundle);
    r().setAdapter(a);
    r().f();
  }
  
  private static class a
    extends w<Event>
  {
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      View localView = paramView;
      if (paramView == null)
      {
        localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903331, paramViewGroup, false);
        localView.setTag(new e(localView));
      }
      paramView = (e)localView.getTag();
      paramView.a((Event)getItem(paramInt), paramViewGroup.getContext());
      paramView.b(new ActivityEvents.a.1(this, paramInt));
      return localView;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.ActivityEvents
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
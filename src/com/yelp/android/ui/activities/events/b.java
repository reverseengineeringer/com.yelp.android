package com.yelp.android.ui.activities.events;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bumptech.glide.c;
import com.bumptech.glide.h;
import com.bumptech.glide.j;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import com.yelp.android.serializable.Event.SubscriptionStatus;
import com.yelp.android.serializable.EventRsvp;
import com.yelp.android.serializable.EventSection;
import com.yelp.android.serializable.Photo;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.widgets.RoundedImageView;
import java.util.ArrayList;
import java.util.List;

public class b
  extends au<Event>
{
  private static final Event a = new Event();
  private boolean b;
  private int[] c;
  private int d;
  private EventSection e;
  private j f;
  
  public b(Bundle paramBundle, Fragment paramFragment)
  {
    f = h.a(paramFragment);
    b = true;
    d = 0;
    if ((paramBundle != null) && (paramBundle.containsKey("saved_events"))) {
      a(paramBundle.getParcelableArrayList("saved_events"));
    }
  }
  
  public b(EventSection paramEventSection, Fragment paramFragment)
  {
    f = h.a(paramFragment);
    e = paramEventSection;
    b = false;
    c = paramEventSection.getItemsToShow();
    d = c.length;
  }
  
  private void a(int paramInt, d paramd, Context paramContext)
  {
    int i = 0;
    Event localEvent = a(paramInt);
    Object localObject;
    if (localEvent.getPhoto() != null)
    {
      f.a(localEvent.getPhoto().getThumbnailUrl()).b(2130837656).a(d.a(paramd));
      d.b(paramd).setText(localEvent.getName());
      d.c(paramd).setText(localEvent.getFormattedTimeRange(paramContext));
      localObject = localEvent.getRsvp();
      if (localObject == null) {
        break label179;
      }
      if (!((EventRsvp)localObject).getUserHasReplied()) {
        break label239;
      }
    }
    label111:
    label128:
    label179:
    label233:
    label239:
    for (paramContext = AppData.b().getString(2131166587);; paramContext = null)
    {
      d.d(paramd).setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
      localObject = d.d(paramd);
      if (a(localEvent))
      {
        paramInt = 0;
        ((TextView)localObject).setVisibility(paramInt);
        d.d(paramd).setText(paramContext);
        paramd = d.e(paramd);
        if (localEvent.getType() != Event.EventType.ELITE) {
          break label233;
        }
      }
      for (paramInt = i;; paramInt = 8)
      {
        paramd.setVisibility(paramInt);
        return;
        d.a(paramd).setImageResource(2130837656);
        break;
        localObject = paramContext.getString(2131166921, new Object[] { localEvent.getSubscriptionStatusEnum().toString() });
        d.d(paramd).setCompoundDrawablesWithIntrinsicBounds(paramContext.getResources().getDrawable(2130838301), null, null, null);
        paramContext = (Context)localObject;
        break label111;
        paramInt = 8;
        break label128;
      }
    }
  }
  
  private boolean a(Event paramEvent)
  {
    return (!TextUtils.isEmpty(paramEvent.getSubscriptionStatus())) || ((paramEvent.getRsvp() != null) && (paramEvent.getRsvp().getUserHasReplied()));
  }
  
  public Event a(int paramInt)
  {
    if (!b)
    {
      if ((paramInt < a().size()) && (paramInt < d)) {
        return (Event)a().get(c[paramInt]);
      }
      a.setId(e.getAlias());
      return a;
    }
    return (Event)a().get(paramInt);
  }
  
  public List<Event> a()
  {
    return super.a();
  }
  
  public void a(Bundle paramBundle)
  {
    if (!isEmpty()) {
      paramBundle.putParcelableArrayList("saved_events", (ArrayList)a());
    }
  }
  
  public EventSection b()
  {
    return e;
  }
  
  public int getCount()
  {
    if (d == 0) {
      return a().size();
    }
    return Math.min(e.getTotal(), d + 1);
  }
  
  public int getItemViewType(int paramInt)
  {
    if ((!b) && (d == paramInt)) {
      return 0;
    }
    return 1;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    if (getItemViewType(paramInt) == 0)
    {
      paramView = LayoutInflater.from(localContext).inflate(2130903254, paramViewGroup, false);
      paramView.findViewById(2131492893).setId(2131493812);
      paramInt = e.getTotal() - d;
      paramViewGroup = localContext.getResources().getQuantityString(2131623977, paramInt, new Object[] { Integer.valueOf(paramInt) });
      ((TextView)paramView.findViewById(2131493668)).setText(paramViewGroup);
      return paramView;
    }
    if (paramView == null)
    {
      paramView = LayoutInflater.from(localContext).inflate(2130903298, paramViewGroup, false);
      paramViewGroup = new d(paramView, null);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      a(paramInt, paramViewGroup, localContext);
      return paramView;
      paramViewGroup = (d)paramView.getTag();
    }
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
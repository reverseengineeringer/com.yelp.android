package com.yelp.android.ui.panels;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpHoursPair;
import com.yelp.android.services.f;
import com.yelp.android.services.f.a;
import com.yelp.android.ui.util.ar;
import java.util.List;
import java.util.TimeZone;

public class d
  extends LinearLayout
{
  private TextView a;
  private TextView b;
  private TextView c;
  private TextView d;
  private TextView e;
  private TextView f;
  
  public d(Context paramContext)
  {
    super(paramContext);
  }
  
  public void a()
  {
    setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
    setOrientation(1);
    ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(2130903427, this);
    a = ((TextView)findViewById(2131690720));
    b = ((TextView)findViewById(2131690719));
    c = ((TextView)findViewById(2131690721));
    e = ((TextView)findViewById(2131690722));
    d = ((TextView)findViewById(2131690724));
    f = ((TextView)findViewById(2131690723));
  }
  
  public void a(Event paramEvent)
  {
    a.setText(paramEvent.G());
    b.setVisibility(8);
    c.setVisibility(8);
    if (paramEvent.C() != null)
    {
      d.setText(paramEvent.C());
      d.setVisibility(0);
    }
    for (;;)
    {
      e.setText("");
      f.setVisibility(8);
      return;
      d.setVisibility(8);
    }
  }
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    a(paramYelpBusiness, false);
  }
  
  public void a(YelpBusiness paramYelpBusiness, LocalAd paramLocalAd)
  {
    a(paramYelpBusiness, true);
    paramYelpBusiness = c;
    if (paramLocalAd.f()) {}
    for (int i = 8;; i = 0)
    {
      paramYelpBusiness.setVisibility(i);
      return;
    }
  }
  
  protected void a(YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    Resources localResources = getContext().getResources();
    a.setText(paramYelpBusiness.c(getContext()));
    Object localObject = b;
    int i;
    if (paramBoolean)
    {
      i = 0;
      ((TextView)localObject).setVisibility(i);
      ar.a(c, paramYelpBusiness.P());
      c.setText(localResources.getQuantityString(2131230757, paramYelpBusiness.N(), new Object[] { Integer.valueOf(paramYelpBusiness.N()) }));
      c.setVisibility(0);
      localObject = paramYelpBusiness.aV();
      if (((List)localObject).isEmpty()) {
        break label264;
      }
      d.setText(((Category)((List)localObject).get(0)).a());
      d.setVisibility(0);
      label138:
      e.setText(paramYelpBusiness.ar());
      localObject = paramYelpBusiness.aM();
      TimeZone localTimeZone = paramYelpBusiness.d();
      localObject = f.a(getContext(), (YelpHoursPair[])((List)localObject).toArray(new YelpHoursPair[0]), localTimeZone);
      if ((paramBoolean) || (!((f.a)localObject).a()) || (paramYelpBusiness.r())) {
        break label349;
      }
      if (!((f.a)localObject).c()) {
        break label293;
      }
      f.setTextColor(localResources.getColor(2131624134));
      if (!((f.a)localObject).d()) {
        break label276;
      }
      f.setText(localResources.getString(2131165566));
    }
    for (;;)
    {
      f.setVisibility(0);
      return;
      i = 8;
      break;
      label264:
      d.setVisibility(8);
      break label138;
      label276:
      f.setText(localResources.getString(2131165565));
      continue;
      label293:
      f.setTextColor(localResources.getColor(2131624190));
      if (((f.a)localObject).f()) {
        f.setText(localResources.getString(2131165561));
      } else {
        f.setText(localResources.getString(2131165559));
      }
    }
    label349:
    f.setVisibility(8);
  }
  
  public void setDistance(String paramString)
  {
    e.setText(paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
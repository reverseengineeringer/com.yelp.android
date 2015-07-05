package com.yelp.android.ui.panels;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpHoursPair;
import com.yelp.android.services.r;
import com.yelp.android.services.s;
import com.yelp.android.ui.util.cp;
import java.util.List;
import java.util.TimeZone;

public class ac
  extends LinearLayout
{
  private ae a;
  private TextView b;
  private TextView c;
  private TextView d;
  private TextView e;
  private TextView f;
  private TextView g;
  
  public ac(Context paramContext)
  {
    super(paramContext);
  }
  
  private void a(YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    Resources localResources = getContext().getResources();
    b.setText(paramYelpBusiness.getDisplayNameForBusinessSearchResult(getContext()));
    Object localObject = c;
    int i;
    if (paramBoolean)
    {
      i = 0;
      ((TextView)localObject).setVisibility(i);
      cp.a(d, paramYelpBusiness.getAvgRating());
      d.setText(localResources.getQuantityString(2131623970, paramYelpBusiness.getReviewCount(), new Object[] { Integer.valueOf(paramYelpBusiness.getReviewCount()) }));
      d.setVisibility(0);
      localObject = paramYelpBusiness.getCategories();
      if (((List)localObject).isEmpty()) {
        break label273;
      }
      e.setText(((Category)((List)localObject).get(0)).getName());
      e.setVisibility(0);
      label138:
      f.setText(AppData.b().g().a(paramYelpBusiness.getPrice()));
      localObject = paramYelpBusiness.getHours();
      TimeZone localTimeZone = paramYelpBusiness.getTimeZone();
      localObject = r.a(getContext(), (YelpHoursPair[])((List)localObject).toArray(new YelpHoursPair[0]), localTimeZone);
      if ((paramBoolean) || (!((s)localObject).a()) || (paramYelpBusiness.isClosed())) {
        break label358;
      }
      if (!((s)localObject).c()) {
        break label302;
      }
      g.setTextColor(localResources.getColor(2131361931));
      if (!((s)localObject).d()) {
        break label285;
      }
      g.setText(localResources.getString(2131165432));
    }
    for (;;)
    {
      g.setVisibility(0);
      return;
      i = 8;
      break;
      label273:
      e.setVisibility(8);
      break label138;
      label285:
      g.setText(localResources.getString(2131165429));
      continue;
      label302:
      g.setTextColor(localResources.getColor(2131361970));
      if (((s)localObject).f()) {
        g.setText(localResources.getString(2131165425));
      } else {
        g.setText(localResources.getString(2131165421));
      }
    }
    label358:
    g.setVisibility(8);
  }
  
  public void a(Event paramEvent)
  {
    b.setText(paramEvent.getName());
    c.setVisibility(8);
    d.setVisibility(8);
    if (paramEvent.getCategoryName() != null)
    {
      e.setText(paramEvent.getCategoryName());
      e.setVisibility(0);
    }
    for (;;)
    {
      f.setText("");
      g.setVisibility(8);
      return;
      e.setVisibility(8);
    }
  }
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    a(paramYelpBusiness, false);
  }
  
  public void a(YelpBusiness paramYelpBusiness, LocalAd paramLocalAd)
  {
    a(paramYelpBusiness, true);
    paramYelpBusiness = d;
    if (paramLocalAd.isRatingDisabled()) {}
    for (int i = 8;; i = 0)
    {
      paramYelpBusiness.setVisibility(i);
      return;
    }
  }
  
  public void a(ae paramae)
  {
    a = paramae;
    setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
    setOrientation(1);
    ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(2130903328, this);
    b = ((TextView)findViewById(2131493882));
    c = ((TextView)findViewById(2131493881));
    d = ((TextView)findViewById(2131493883));
    f = ((TextView)findViewById(2131493884));
    e = ((TextView)findViewById(2131493886));
    g = ((TextView)findViewById(2131493885));
    getChildAt(0).setOnClickListener(new ad(this));
  }
  
  public void setDistance(String paramString)
  {
    f.setText(paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
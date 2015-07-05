package com.yelp.android.ui.panels.businesspage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.SpamAlert;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bw;
import com.yelp.android.ui.util.h;
import com.yelp.android.webimageview.WebImageView;
import java.util.HashMap;
import java.util.Map;

public class ConsumerAlertPanel
  extends RelativeLayout
{
  private bs a;
  private ScrollToLoadListView b;
  private h c;
  private com.yelp.android.av.a d;
  private String e;
  
  public ConsumerAlertPanel(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ConsumerAlertPanel(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public ConsumerAlertPanel(Context paramContext, bs parambs, ScrollToLoadListView paramScrollToLoadListView, com.yelp.android.av.a parama)
  {
    super(paramContext);
    a = parambs;
    b = paramScrollToLoadListView;
    d = parama;
    c = new h(new View[] { this });
    a.a(2130903288, bw.a(c).a());
  }
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    if ((paramYelpBusiness == null) || (paramYelpBusiness.getSpamAlert() == null)) {
      return;
    }
    SpamAlert localSpamAlert = paramYelpBusiness.getSpamAlert();
    Object localObject = new HashMap();
    ((Map)localObject).put("id", paramYelpBusiness.getId());
    ((Map)localObject).put("type", localSpamAlert.getType());
    d.a(EventIri.BusinessSpamAlertShown, (Map)localObject);
    LayoutInflater.from(getContext()).inflate(2130903288, this);
    paramYelpBusiness = new a(this, (Map)localObject);
    findViewById(2131493795).setOnClickListener(paramYelpBusiness);
    findViewById(2131493796).setOnClickListener(paramYelpBusiness);
    localObject = (Button)findViewById(2131493794);
    ((WebImageView)findViewById(2131493791)).setImageUrl(localSpamAlert.getImageUrl());
    ((TextView)findViewById(2131493792)).setText(localSpamAlert.getTitle());
    ((TextView)findViewById(2131493793)).setText(localSpamAlert.getText());
    e = localSpamAlert.getEvidenceUrl();
    if (e != null) {
      ((Button)localObject).setOnClickListener(paramYelpBusiness);
    }
    for (;;)
    {
      a.a(true);
      b.c(false);
      return;
      ((Button)localObject).setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesspage.ConsumerAlertPanel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
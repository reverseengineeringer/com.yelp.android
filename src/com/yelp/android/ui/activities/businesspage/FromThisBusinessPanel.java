package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.BusinessRepresentative;
import com.yelp.android.serializable.FromThisBusiness;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.widgets.WebImageView;

public class FromThisBusinessPanel
  extends LinearLayout
{
  private WebImageView a;
  private TextView b;
  
  public FromThisBusinessPanel(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(2130903137, this);
    a = ((WebImageView)findViewById(2131493356));
    b = ((TextView)findViewById(2131493358));
  }
  
  public void a(YelpBusiness paramYelpBusiness, FromThisBusiness paramFromThisBusiness)
  {
    if ((paramFromThisBusiness == null) || (!paramFromThisBusiness.getShowTeaser()))
    {
      setVisibility(8);
      return;
    }
    BusinessRepresentative localBusinessRepresentative = paramFromThisBusiness.getRepresentative();
    if ((localBusinessRepresentative != null) && (localBusinessRepresentative.getPhoto() != null))
    {
      a.setImageUrl(localBusinessRepresentative.getPhoto().getThumbnailUrl(), 2130837648);
      a.setVisibility(0);
    }
    for (;;)
    {
      b.setText(paramFromThisBusiness.getSpecialties());
      setOnClickListener(new ce(this, EventIri.BusinessOpenFromThisBusinessTeaser, paramYelpBusiness));
      setVisibility(0);
      return;
      a.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.FromThisBusinessPanel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
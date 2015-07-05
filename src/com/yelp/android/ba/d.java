package com.yelp.android.ba;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.az.a;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.YelpBusiness;
import java.util.List;

public class d
  extends a
{
  public final TextView f = (TextView)e.findViewById(2131493146);
  public final TextView g = (TextView)e.findViewById(2131493678);
  
  public d(View paramView, int paramInt)
  {
    super(paramView, paramInt);
  }
  
  protected String a(YelpBusiness paramYelpBusiness)
  {
    if ((paramYelpBusiness == null) || (paramYelpBusiness.getPhotos().isEmpty())) {
      return null;
    }
    return ((Photo)paramYelpBusiness.getPhotos().get(0)).getLargestUrl();
  }
  
  public void a(Context paramContext, YelpBusiness paramYelpBusiness, float paramFloat, int paramInt)
  {
    super.a(paramContext, paramYelpBusiness, paramFloat, paramInt);
    f.setText(paramYelpBusiness.getLocalizedPrice());
    g.setText(paramYelpBusiness.getCategoryForBusinessSearchResult());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ba.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
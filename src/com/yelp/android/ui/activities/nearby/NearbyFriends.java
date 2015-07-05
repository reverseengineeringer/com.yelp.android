package com.yelp.android.ui.activities.nearby;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.List;

public class NearbyFriends
  extends LinearLayout
{
  private List<YelpCheckIn> a;
  private final TextView b;
  private final TextView c;
  private final WebImageView d;
  
  public NearbyFriends(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(2130903252, this);
    d = ((WebImageView)findViewById(2131493446));
    b = ((TextView)findViewById(2131492996));
    c = ((TextView)findViewById(2131493276));
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 0;
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((a == null) || (a.size() == 0)) {
      return;
    }
    Object localObject1 = getResources();
    paramInt2 = a.size();
    Object localObject2 = (YelpCheckIn)a.get(0);
    b.setText(((Resources)localObject1).getQuantityString(2131623962, paramInt2));
    if (paramInt2 == 1)
    {
      c.setText(((Resources)localObject1).getString(2131166866, new Object[] { ((YelpCheckIn)localObject2).getUserName(), ((YelpCheckIn)localObject2).getBusinessName() }));
      return;
    }
    localObject2 = new String[paramInt2];
    paramInt1 = i;
    while (paramInt1 < paramInt2)
    {
      localObject2[paramInt1] = ((YelpCheckIn)a.get(paramInt1)).getUser().getNameWithoutPeriod();
      paramInt1 += 1;
    }
    localObject1 = TextUtils.commaEllipsize(TextUtils.join(", ", (Object[])localObject2), c.getPaint(), c.getMeasuredWidth(), ((Resources)localObject1).getString(2131166254), ((Resources)localObject1).getString(2131166881));
    c.setText((CharSequence)localObject1);
  }
  
  public void setCheckIns(List<YelpCheckIn> paramList)
  {
    a = paramList;
    if ((a != null) && (a.size() > 0)) {
      d.setImageUrl(((YelpCheckIn)a.get(0)).getUserPhotoUrl(), 2130837659);
    }
    invalidate();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.NearbyFriends
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
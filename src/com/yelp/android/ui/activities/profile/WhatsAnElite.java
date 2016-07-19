package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.n;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.User.EliteYear;
import com.yelp.android.serializable.User.EliteYear.TYPE;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.c;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.w;
import java.util.Collections;
import java.util.List;

public class WhatsAnElite
  extends YelpListActivity
{
  public static Intent a(Context paramContext, User paramUser)
  {
    paramContext = new Intent(paramContext, WhatsAnElite.class);
    paramContext.putExtra("extra.user", paramUser);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.WhatsAnElite;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = (User)getIntent().getParcelableExtra("extra.user");
    int i = 2131166602;
    if (paramBundle.h()) {
      i = 2131166601;
    }
    setTitle(getString(i, new Object[] { paramBundle.Z() }));
    aj localaj = new aj();
    a locala = new a(paramBundle.u());
    localaj.a(2131166603, aj.c.a(getString(2131166603, new Object[] { paramBundle.Z() }), locala).a(2130772428).a(2131689503, 0, n.c * 4).b());
    r().setAdapter(localaj);
    r().f();
  }
  
  private static final class a
    extends w<User.EliteYear>
  {
    public a(List<User.EliteYear> paramList)
    {
      Collections.sort(paramList, Collections.reverseOrder());
      a(paramList);
    }
    
    public boolean areAllItemsEnabled()
    {
      return false;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      Context localContext = paramViewGroup.getContext();
      View localView = paramView;
      if (paramView == null) {
        localView = LayoutInflater.from(localContext).inflate(2130903391, paramViewGroup, false);
      }
      paramView = (EliteBadge)localView.findViewById(2131690639);
      paramViewGroup = (User.EliteYear)getItem(paramInt);
      paramView.setYear(a);
      ar.a(paramView, b.getBackground());
      ((TextView)localView.findViewById(2131690640)).setText(localContext.getString(2131165830, new Object[] { Integer.valueOf(getItema) }));
      return localView;
    }
    
    public boolean isEnabled(int paramInt)
    {
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.WhatsAnElite
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
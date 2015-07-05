package com.yelp.android.ui.util;

import android.content.Context;
import com.yelp.android.serializable.Media;
import com.yelp.android.ui.activities.photoviewer.ActivityMediaViewer;
import java.util.List;

public class bd
  extends bc
{
  public bd(List<? extends Media> paramList)
  {
    super(paramList);
  }
  
  public void a(Context paramContext, int paramInt)
  {
    paramContext.startActivity(ActivityMediaViewer.a(paramContext, ((Media)a.get(0)).getBusinessId(), a, paramInt));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
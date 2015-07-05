package com.yelp.android.ui.activities.addphoto;

import android.content.Context;
import android.view.View;
import com.yelp.android.analytics.d;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.IdentifiableMedia;
import com.yelp.android.ui.activities.photoviewer.ActivityMediaViewer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public final class l
  extends d
{
  private final String a;
  private final IdentifiableMedia b;
  
  public l(EventIri paramEventIri, Map<String, Object> paramMap, String paramString, IdentifiableMedia paramIdentifiableMedia)
  {
    super(paramEventIri, paramMap);
    a = paramString;
    b = paramIdentifiableMedia;
  }
  
  public void a(View paramView)
  {
    Integer localInteger = (Integer)paramView.getTag(2131492906);
    Object localObject = (List)paramView.getTag(2131492907);
    if ((localInteger != null) && (localObject != null) && (localInteger.intValue() <= ((List)localObject).size()))
    {
      localObject = new ArrayList((Collection)localObject);
      if (b != null) {
        ((List)localObject).add(b);
      }
      paramView = paramView.getContext();
      paramView.startActivity(ActivityMediaViewer.a(paramView, a, null, (List)localObject, localInteger.intValue()));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
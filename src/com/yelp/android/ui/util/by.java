package com.yelp.android.ui.util;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.yelp.android.analytics.d;
import com.yelp.android.analytics.iris.EventIri;
import java.util.Collections;
import java.util.Map;

public class by
  extends d
{
  final Intent a;
  
  public by(EventIri paramEventIri, Intent paramIntent)
  {
    this(paramEventIri, Collections.emptyMap(), paramIntent);
  }
  
  public by(EventIri paramEventIri, Map<String, Object> paramMap, Intent paramIntent)
  {
    super(paramEventIri, paramMap);
    a = paramIntent;
  }
  
  public void a(View paramView)
  {
    paramView.getContext().startActivity(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.yelp.android.debug;

import android.os.Bundle;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class FreezerDebugActivity
  extends YelpActivity
{
  private List<c<?, ?>> a = new ArrayList();
  private LinearLayout b;
  private int c;
  
  private static void a(List<c<?, ?>> paramList)
  {
    paramList = paramList.listIterator();
    while (paramList.hasNext()) {
      if (((c)paramList.next()).b()) {
        paramList.remove();
      }
    }
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = new Button(this);
    paramBundle.setText("Create Request");
    paramBundle.setOnClickListener(new b(this, this));
    b = new LinearLayout(this);
    b.setOrientation(1);
    b.addView(paramBundle);
    paramBundle = new ScrollView(this);
    paramBundle.addView(b);
    setContentView(paramBundle);
  }
  
  protected void onPause()
  {
    super.onPause();
    a(a);
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((c)localIterator.next()).a(this);
    }
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    String[] arrayOfString = paramBundle.getStringArray("REQUEST_LABELS");
    int j = arrayOfString.length;
    int i = 0;
    if (i < j)
    {
      String str = arrayOfString[i];
      if (str.endsWith("MyCheckInsRequest")) {
        a.add(new c(this, this, str));
      }
      for (;;)
      {
        i += 1;
        break;
        a.add(new c(this, this, str));
      }
    }
    c = paramBundle.getInt("REQUEST_COUNTER", 0);
  }
  
  protected void onResume()
  {
    super.onResume();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((c)localIterator.next()).b(this);
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    a(a);
    String[] arrayOfString = new String[a.size()];
    int i = 0;
    while (i < a.size())
    {
      arrayOfString[i] = ((c)a.get(i)).a();
      i += 1;
    }
    paramBundle.putStringArray("REQUEST_LABELS", arrayOfString);
    paramBundle.putInt("REQUEST_COUNTER", c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.debug.FreezerDebugActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
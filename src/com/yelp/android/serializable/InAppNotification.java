package com.yelp.android.serializable;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Bundle;
import android.util.ArrayMap;
import com.yelp.android.database.l;
import com.yelp.android.g.a;
import com.yelp.android.ui.activities.businesspage.BusinessPageFragment;
import com.yelp.android.ui.activities.nearby.NearbyPageFragment;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Map;

public class InAppNotification
  extends _InAppNotification
{
  public static final JsonParser.DualCreator<InAppNotification> CREATOR = new InAppNotification.1();
  public static final Map<String, String> a = new ArrayMap();
  
  static
  {
    a.put("nearby", NearbyPageFragment.class.toString());
    a.put("business", BusinessPageFragment.class.toString());
  }
  
  public InAppNotification() {}
  
  public InAppNotification(Cursor paramCursor)
  {
    i = paramCursor.getLong(paramCursor.getColumnIndex("id"));
    b = paramCursor.getString(paramCursor.getColumnIndex("title"));
    c = paramCursor.getString(paramCursor.getColumnIndex("message"));
    d = paramCursor.getString(paramCursor.getColumnIndex("campaign_id"));
    e = paramCursor.getString(paramCursor.getColumnIndex("tap_action"));
    f = paramCursor.getString(paramCursor.getColumnIndex("location"));
    g = paramCursor.getString(paramCursor.getColumnIndex("cohort"));
    h = paramCursor.getDouble(paramCursor.getColumnIndex("version"));
  }
  
  public InAppNotification(Bundle paramBundle)
  {
    b = paramBundle.getString("title");
    c = paramBundle.getString("msg");
    d = paramBundle.getString("campaign_id");
    e = paramBundle.getString("tap_action");
    f = paramBundle.getString("loc");
    g = paramBundle.getString("cohort");
    h = Double.parseDouble(paramBundle.getString("version"));
  }
  
  public Map<String, Object> a()
  {
    a locala = new a();
    locala.put("cohort", g);
    locala.put("campaign_id", d);
    return locala;
  }
  
  public void a(l paraml)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("title", b);
    localContentValues.put("message", c);
    localContentValues.put("campaign_id", d);
    localContentValues.put("tap_action", e);
    localContentValues.put("location", (String)a.get(f));
    localContentValues.put("cohort", g);
    localContentValues.put("version", Double.valueOf(h));
    i = Long.parseLong(paraml.a("id", String.valueOf(i), localContentValues));
  }
  
  public void b(l paraml)
  {
    paraml.b("id", String.valueOf(i));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.InAppNotification
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
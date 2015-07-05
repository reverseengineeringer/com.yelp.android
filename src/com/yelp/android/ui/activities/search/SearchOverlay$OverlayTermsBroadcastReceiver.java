package com.yelp.android.ui.activities.search;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.yelp.android.util.BasicBroadcastReceiver;
import java.util.Collections;

public class SearchOverlay$OverlayTermsBroadcastReceiver
  extends BasicBroadcastReceiver
{
  private final CharSequence a;
  private final CharSequence b;
  private final at c;
  private CharSequence d;
  private CharSequence e;
  
  public SearchOverlay$OverlayTermsBroadcastReceiver(at paramat, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    super(Collections.singleton(new IntentFilter("com.yelp.android.search_text_changed")));
    e = paramCharSequence1;
    a = paramCharSequence1;
    d = paramCharSequence2;
    b = paramCharSequence2;
    c = paramat;
  }
  
  public CharSequence a()
  {
    return d;
  }
  
  public CharSequence b()
  {
    return e;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    e = paramIntent.getCharSequenceExtra("extra.search_text");
    d = paramIntent.getCharSequenceExtra("extra.location");
    c.a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchOverlay.OverlayTermsBroadcastReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
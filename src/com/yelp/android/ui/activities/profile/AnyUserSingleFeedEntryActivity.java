package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.serializable.User;
import java.util.Collections;
import java.util.Map;

public abstract class AnyUserSingleFeedEntryActivity<ObjectType extends FeedEntry>
  extends SingleFeedEntryActivity<ObjectType>
{
  protected User a;
  
  public static Intent b(Context paramContext, User paramUser, Class<? extends AnyUserSingleFeedEntryActivity<?>> paramClass, int paramInt)
  {
    paramContext = SingleFeedEntryActivity.a(paramContext, paramClass, paramInt);
    paramContext.putExtra("user_key", paramUser);
    return paramContext;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    paramb = Collections.emptyMap();
    if (a != null) {
      paramb = Collections.singletonMap("id", a.getId());
    }
    return paramb;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    a = ((User)getIntent().getParcelableExtra("user_key"));
    super.onCreate(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.AnyUserSingleFeedEntryActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
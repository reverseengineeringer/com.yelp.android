package com.yelp.android.ui.activities.profile;

import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.SimpleAdapter.ViewBinder;
import android.widget.TextView;

public final class MoreAboutUser$a
  implements SimpleAdapter.ViewBinder
{
  public boolean setViewValue(View paramView, Object paramObject, String paramString)
  {
    boolean bool = false;
    if ((paramObject instanceof CharSequence))
    {
      ((TextView)paramView).setText((CharSequence)paramObject);
      ((TextView)paramView).setMovementMethod(LinkMovementMethod.getInstance());
      bool = true;
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.MoreAboutUser.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
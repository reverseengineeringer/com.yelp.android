package com.yelp.android.ui.activities.events;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import com.bumptech.glide.b;
import com.bumptech.glide.d;
import com.bumptech.glide.h;
import com.bumptech.glide.j;
import com.yelp.android.ui.activities.media.e;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.util.cp;

public class EventPartyPassFragment
  extends YelpFragment
{
  private Bitmap a;
  private ImageView b;
  
  public static EventPartyPassFragment a(String paramString1, String paramString2)
  {
    EventPartyPassFragment localEventPartyPassFragment = new EventPartyPassFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("args_fragment_title", paramString1);
    localBundle.putString("args_party_pass_url", paramString2);
    localEventPartyPassFragment.setArguments(localBundle);
    return localEventPartyPassFragment;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getActivity().setTitle(getArguments().getString("args_fragment_title"));
    i_();
    h.a(this).a(getArguments().getString("args_party_pass_url")).j().a(new u(this, b));
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    if (a != null) {
      paramMenuInflater.inflate(2131755021, paramMenu);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    setHasOptionsMenu(true);
    b = new ImageView(getActivity());
    b.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    int i = cp.a(getActivity(), 2130772042);
    b.setPadding(i, i, i, i);
    b.setContentDescription(getString(2131166293));
    paramLayoutInflater.addView(b);
    return paramLayoutInflater;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    i_();
    new e(this).execute(new Bitmap[] { a });
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.EventPartyPassFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
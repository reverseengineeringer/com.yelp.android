package com.yelp.android.ui.activities.addphoto;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ImageView;
import android.widget.MultiAutoCompleteTextView;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.bumptech.glide.j;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.util.ce;
import com.yelp.android.ui.util.cr;
import com.yelp.android.util.z;
import java.util.List;

public class AddCaptionFragment
  extends YelpFragment
{
  private static final int[] a = { 2131166316, 2131166317, 2131166318, 2131166319, 2131166320, 2131166321, 2131166322, 2131166323 };
  private static final int[] b = { 2131166317, 2131166318, 2131166320, 2131166321, 2131166322, 2131166323 };
  private g c;
  private String d;
  private boolean e;
  private boolean g;
  private MultiAutoCompleteTextView h;
  private ImageView i;
  private View j;
  private ToggleButton k;
  private ToggleButton l;
  private final AdapterView.OnItemSelectedListener m = new f(this);
  
  public static AddCaptionFragment a(String paramString1, String paramString2, String paramString3)
  {
    AddCaptionFragment localAddCaptionFragment = new AddCaptionFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("business_id", paramString1);
    localBundle.putString("media_path", paramString2);
    localBundle.putBoolean("is_video_upload", false);
    localBundle.putBoolean("is_edit", true);
    localBundle.putString("caption_text", paramString3);
    localAddCaptionFragment.setArguments(localBundle);
    return localAddCaptionFragment;
  }
  
  public static AddCaptionFragment a(String paramString1, String paramString2, boolean paramBoolean)
  {
    AddCaptionFragment localAddCaptionFragment = new AddCaptionFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("business_id", paramString1);
    localBundle.putString("media_path", paramString2);
    localBundle.putBoolean("is_video_upload", paramBoolean);
    localBundle.putBoolean("is_edit", false);
    localAddCaptionFragment.setArguments(localBundle);
    return localAddCaptionFragment;
  }
  
  public void a()
  {
    cr.b(h);
    List localList = z.a(null, k, l);
    c.a(h.getText().toString(), localList);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    c = ((g)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
    d = getArguments().getString("business_id");
    e = getArguments().getBoolean("is_video_upload");
    g = getArguments().getBoolean("is_edit");
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131755019, paramMenu);
    paramMenu.findItem(2131494141).setTitle(2131166352);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    int i1 = 8;
    paramLayoutInflater = paramLayoutInflater.inflate(2130903213, paramViewGroup, false);
    h = ((MultiAutoCompleteTextView)paramLayoutInflater.findViewById(2131493548));
    h.setTokenizer(new h(this, null));
    h.setOnItemSelectedListener(m);
    if (g)
    {
      h.setText(getArguments().getString("caption_text"));
      paramViewGroup = (TextView)paramLayoutInflater.findViewById(2131493067);
      n = getResources().getInteger(2131558423);
      h.addTextChangedListener(new ce(paramViewGroup, n));
      paramViewGroup = paramLayoutInflater.findViewById(2131493547);
      if (!e) {
        break label448;
      }
      n = 0;
      label131:
      paramViewGroup.setVisibility(n);
      j = paramLayoutInflater.findViewById(2131493314);
      paramViewGroup = j;
      n = i1;
      if (!e) {
        if (!g) {
          break label455;
        }
      }
    }
    label448:
    label455:
    for (int n = i1;; n = 0)
    {
      paramViewGroup.setVisibility(n);
      k = ((ToggleButton)paramLayoutInflater.findViewById(2131493319));
      l = ((ToggleButton)paramLayoutInflater.findViewById(2131493318));
      z.a(AppData.b().m().h(), getActivity().getPreferences(0), null, k, l);
      k.setOnCheckedChangeListener(new c(this));
      l.setOnCheckedChangeListener(new d(this));
      i = ((ImageView)paramLayoutInflater.findViewById(2131493062));
      i.setOnClickListener(new e(this));
      n = getResources().getDimensionPixelSize(2131427371);
      com.bumptech.glide.h.a(getActivity()).a(getArguments().getString("media_path")).a(n, n).a(i);
      return paramLayoutInflater;
      if (e)
      {
        h.setHint(getText(b[new java.util.Random().nextInt(b.length)]));
        break;
      }
      if (getActivity().getSharedPreferences("ActivityAddBusinessPhoto:prefs", 0).getBoolean("add photo ever loaded", false))
      {
        h.setHint(getText(a[new java.util.Random().nextInt(a.length)]));
        break;
      }
      h.setHint(2131166316);
      break;
      n = 8;
      break label131;
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    c = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    a();
    return true;
  }
  
  public void onResume()
  {
    super.onResume();
    h.requestFocus();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.AddCaptionFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.yelp.android.ui.activities.addphoto;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ImageView;
import android.widget.MultiAutoCompleteTextView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.ui.activities.camera.TakePhoto;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.util.al;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.util.u.a;
import com.yelp.android.util.p;
import java.util.List;

public class AddCaptionFragment
  extends YelpFragment
{
  private static final int[] a = { 2131165595, 2131165597, 2131165599, 2131165600, 2131165601, 2131165602 };
  private static final int[] b = { 2131165596, 2131165598, 2131165600, 2131165601, 2131165602 };
  private b c;
  private a d;
  private String e;
  private boolean f;
  private boolean g;
  private String i;
  private int j;
  private MultiAutoCompleteTextView k;
  private ImageView l;
  private View m;
  private TextView n;
  private TextView o;
  private ToggleButton p;
  private ToggleButton q;
  private com.yelp.android.ui.util.t r;
  private final AdapterView.OnItemSelectedListener s = new AddCaptionFragment.5(this);
  
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
  
  private void a()
  {
    as.b(k);
    List localList = p.a(null, p, q);
    c.a(k.getText().toString(), localList);
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    d.a(paramInt1, paramInt2);
    int i1;
    if (o != null)
    {
      i1 = com.yelp.android.util.t.a(i);
      o.setVisibility(0);
      if ((paramInt1 == 0) && (paramInt2 == i1)) {
        o.setText(getString(2131166785));
      }
    }
    else
    {
      return;
    }
    if (paramInt1 == 0)
    {
      o.setText(String.format(getString(2131166782), new Object[] { Integer.valueOf(paramInt2 / 1000) }));
      return;
    }
    if (paramInt2 == i1)
    {
      o.setText(String.format(getString(2131166787), new Object[] { Integer.valueOf((paramInt2 - paramInt1) / 1000) }));
      return;
    }
    o.setText(String.format(getString(2131166784), new Object[] { Integer.valueOf(paramInt1 / 1000), Integer.valueOf(paramInt2 / 1000) }));
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
    do
    {
      return;
    } while (paramInt2 != -1);
    a(TakePhoto.e(paramIntent).intValue(), TakePhoto.f(paramIntent).intValue());
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    c = ((b)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
    e = getArguments().getString("business_id");
    i = getArguments().getString("media_path");
    f = getArguments().getBoolean("is_video_upload");
    g = getArguments().getBoolean("is_edit");
    r = com.yelp.android.ui.util.t.a(getActivity());
    if (!g) {
      d = ((a)getActivity());
    }
    if ((i != null) && (f)) {
      j = com.yelp.android.util.t.a(i);
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131755021, paramMenu);
    paramMenu.findItem(2131691015).setTitle(2131166375);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (g)
    {
      paramLayoutInflater = paramLayoutInflater.inflate(2130903241, paramViewGroup, false);
      k = ((MultiAutoCompleteTextView)paramLayoutInflater.findViewById(2131690243));
      k.setTokenizer(new AddCaptionFragment.c(this, null));
      k.setOnItemSelectedListener(s);
      if (!g) {
        break label213;
      }
      k.setText(getArguments().getString("caption_text"));
      label81:
      paramViewGroup = (TextView)paramLayoutInflater.findViewById(2131689751);
      i1 = getResources().getInteger(2131492900);
      k.addTextChangedListener(new al(paramViewGroup, i1));
      paramViewGroup = paramLayoutInflater.findViewById(2131690245);
      if (!f) {
        break label284;
      }
    }
    label213:
    label284:
    for (int i1 = 0;; i1 = 8)
    {
      paramViewGroup.setVisibility(i1);
      paramViewGroup = new AddCaptionFragment.1(this);
      l = ((ImageView)paramLayoutInflater.findViewById(2131690244));
      if (!g) {
        break label291;
      }
      r.a(getArguments().getString("media_path")).a(l);
      return paramLayoutInflater;
      paramLayoutInflater = paramLayoutInflater.inflate(2130903238, paramViewGroup, false);
      break;
      if (f)
      {
        k.setHint(getText(b[new java.util.Random().nextInt(b.length)]));
        break label81;
      }
      k.setHint(getText(a[new java.util.Random().nextInt(a.length)]));
      break label81;
    }
    label291:
    paramLayoutInflater.findViewById(2131689747).setOnClickListener(paramViewGroup);
    m = paramLayoutInflater.findViewById(2131690248);
    if (f)
    {
      paramLayoutInflater.findViewById(2131690247).setVisibility(8);
      paramLayoutInflater.findViewById(2131690246).setVisibility(8);
      i1 = getResources().getDimensionPixelSize(2131361896);
      paramViewGroup = new RelativeLayout.LayoutParams(i1, i1);
      l.setLayoutParams(paramViewGroup);
      n = ((TextView)paramLayoutInflater.findViewById(2131690250));
      o = ((TextView)paramLayoutInflater.findViewById(2131690251));
      n.setText(getString(2131166730));
      o.setText(getString(2131166785));
      o.setVisibility(0);
      m.setOnClickListener(new AddCaptionFragment.2(this));
    }
    for (;;)
    {
      i1 = getResources().getDimensionPixelSize(2131361893);
      r.a(getArguments().getString("media_path")).a(i1, i1).a(l);
      if (j <= 12000) {
        break;
      }
      a(0, 12000);
      return paramLayoutInflater;
      p = ((ToggleButton)paramLayoutInflater.findViewById(2131689975));
      q = ((ToggleButton)paramLayoutInflater.findViewById(2131689974));
      paramBundle = AppData.b().q().p();
      p.a(getActivity(), paramBundle, true, null, p, q);
      p.setOnCheckedChangeListener(new AddCaptionFragment.3(this));
      q.setOnCheckedChangeListener(new AddCaptionFragment.4(this));
      m.setOnClickListener(paramViewGroup);
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    c = null;
    d = null;
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
  
  public void onPause()
  {
    super.onPause();
    ar.c(k);
  }
  
  public void onResume()
  {
    super.onResume();
    ar.b(k);
  }
  
  public static abstract interface a
  {
    public abstract void a(int paramInt1, int paramInt2);
  }
  
  public static abstract interface b
  {
    public abstract void a(String paramString, List<ShareRequest.ShareType> paramList);
    
    public abstract void b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.AddCaptionFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.style.URLSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.UserPhotoRequest;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.gw;
import com.yelp.android.appdata.webrequests.gx;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.photoviewer.ActivityMediaViewer;
import com.yelp.android.ui.activities.photoviewer.UserMediaViewer;
import com.yelp.android.ui.dialogs.DlgAddPhotoCaption;
import com.yelp.android.ui.panels.SpanOfPhotosView;
import com.yelp.android.ui.util.ImageInputHelper;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.bd;
import com.yelp.android.ui.util.by;
import com.yelp.android.ui.util.cr;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class MoreAboutUser
  extends YelpListActivity
{
  private gx a;
  private View b;
  private User c;
  private Intent d;
  private final com.yelp.android.appdata.webrequests.m<User> e = new o(this);
  private final com.yelp.android.appdata.webrequests.m<gw> f = new p(this);
  
  public static Intent a(Context paramContext, User paramUser)
  {
    paramContext = new Intent(paramContext, MoreAboutUser.class);
    paramContext.putExtra("I feel so used :(", paramUser);
    return paramContext;
  }
  
  private View a(ViewGroup paramViewGroup)
  {
    b = getLayoutInflater().inflate(2130903332, paramViewGroup, false);
    f();
    return b;
  }
  
  private void a(String paramString, User paramUser)
  {
    Object localObject = (ViewStub)findViewById(2131493311);
    getLayoutParamsheight = -2;
    getLayoutParamswidth = -1;
    ((ViewStub)localObject).setLayoutResource(2130903351);
    ((ViewStub)localObject).setInflatedId(2131493311);
    localObject = (TextView)((ViewStub)localObject).inflate();
    int i = 2131166805;
    if (AppData.b().m().a(paramUser)) {
      i = 2131166911;
    }
    ((TextView)localObject).setText(getString(i, new Object[] { paramString }));
    q().setEmptyView((View)localObject);
  }
  
  private ArrayList<Map<String, CharSequence>> c()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = c.getProfileBio().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      HashMap localHashMap = new HashMap();
      SpannableStringBuilder localSpannableStringBuilder = SpannableStringBuilder.valueOf(Html.fromHtml((String)localEntry.getValue()));
      URLSpan[] arrayOfURLSpan = (URLSpan[])localSpannableStringBuilder.getSpans(0, localSpannableStringBuilder.length(), URLSpan.class);
      int j = arrayOfURLSpan.length;
      int i = 0;
      while (i < j)
      {
        int k = localSpannableStringBuilder.getSpanStart(arrayOfURLSpan[i]);
        if ("http://".equalsIgnoreCase(String.valueOf(localSpannableStringBuilder.subSequence(k, "http://".length() + k)))) {
          localSpannableStringBuilder.delete(k, "http://".length() + k);
        }
        if (k > 0) {
          localSpannableStringBuilder.insert(k, "\n\n");
        }
        i += 1;
      }
      localHashMap.put("label", localEntry.getKey());
      localHashMap.put("value", localSpannableStringBuilder);
      localArrayList.add(localHashMap);
    }
    return localArrayList;
  }
  
  private void f()
  {
    Object localObject1 = null;
    ImageInputHelper localImageInputHelper = new ImageInputHelper(AppData.b().h(), 1037);
    TextView localTextView1 = (TextView)b.findViewById(2131493896);
    localTextView1.setOnClickListener(new m(this, localImageInputHelper));
    TextView localTextView2 = (TextView)b.findViewById(2131493897);
    boolean bool = getAppData().m().a(c);
    Object localObject2;
    if (bool)
    {
      localTextView2.setText(getString(2131166114));
      localObject2 = UserMediaGrid.a(this, c.getId(), new UserPhotoRequest(c, c.getPhotos().size(), 20, null), c.getPhotos());
      localTextView2.setOnClickListener(new by(EventIri.ProfileMoreUserPhotos, (Intent)localObject2));
      localObject2 = (SpanOfPhotosView)b.findViewById(2131493895);
      ((SpanOfPhotosView)localObject2).a(createPendingResult(1041, new Intent(), 268435456), new bd(c.getPhotos()));
      if (bool) {
        break label319;
      }
      label212:
      ((SpanOfPhotosView)localObject2).a(c.getPhotos(), 2130837659, (View.OnClickListener)localObject1);
      if (c.getPhotos().size() > ((SpanOfPhotosView)localObject2).getMaxPhotoCount()) {
        break label333;
      }
      localTextView2.setVisibility(8);
    }
    for (;;)
    {
      if ((bool) && ((!bool) || (c.getPhotos().size() >= ((SpanOfPhotosView)localObject2).b()))) {
        break label342;
      }
      localTextView1.setVisibility(8);
      return;
      localTextView2.setText(getString(2131166113, new Object[] { c.getFirstName() }));
      break;
      label319:
      localObject1 = new n(this, localImageInputHelper);
      break label212;
      label333:
      localTextView2.setVisibility(0);
    }
    label342:
    localTextView1.setVisibility(0);
  }
  
  private gx g()
  {
    if ((a != null) && (a.isFetching())) {
      return a;
    }
    a = new gx(e, c.getId(), null);
    a.execute(new Void[0]);
    return a;
  }
  
  public ViewIri getIri()
  {
    ViewIri localViewIri = ViewIri.MoreAboutUser;
    if (getAppData().m().a(c)) {
      localViewIri = ViewIri.MoreAboutMe;
    }
    return localViewIri;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
    do
    {
      do
      {
        return;
      } while ((paramInt2 != -1) || (paramIntent.getBooleanExtra(SpanOfPhotosView.a, false)));
      paramInt1 = ActivityMediaViewer.b(paramIntent);
      startActivity(UserMediaViewer.b(this, c.getPhotos(), paramInt1));
      return;
      if (paramInt2 == -1)
      {
        d = paramIntent;
        return;
      }
    } while (paramInt2 != 4);
    cr.a(getText(2131166312), 1);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    q().setItemsCanFocus(true);
    c = ((User)getIntent().getParcelableExtra("I feel so used :("));
    boolean bool = getAppData().m().a(c);
    paramBundle = c.getFirstName();
    Object localObject;
    if (bool)
    {
      setTitle(getString(2131166104));
      a(paramBundle, c);
      paramBundle = new SimpleAdapter(this, c(), 2130903350, new String[] { "label", "value" }, new int[] { 2131493442, 2131493443 });
      paramBundle.setViewBinder(new q());
      if (!paramBundle.isEmpty()) {
        break label198;
      }
      localObject = (ViewGroup)findViewById(16908331);
      ((ViewGroup)localObject).addView(a((ViewGroup)localObject), 0);
    }
    for (;;)
    {
      q().setAdapter(paramBundle);
      q().f();
      return;
      setTitle(getString(2131166103, new Object[] { paramBundle }));
      break;
      label198:
      localObject = q();
      ((ListView)localObject).addHeaderView(a((ViewGroup)localObject), null, false);
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (a != null)
    {
      a.cancel(true);
      a.setCallback(null);
    }
  }
  
  protected void onPostResume()
  {
    super.onPostResume();
    if (d != null) {
      DlgAddPhotoCaption.a(d, this, f, getSupportFragmentManager(), "dialog_add_photo");
    }
    d = null;
  }
  
  public void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    c = ((User)paramBundle.getParcelable("I feel so used :("));
  }
  
  public void onResume()
  {
    super.onResume();
    g();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("I feel so used :(", c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.MoreAboutUser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
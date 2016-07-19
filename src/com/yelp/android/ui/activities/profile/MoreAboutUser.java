package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.SimpleAdapter.ViewBinder;
import android.widget.TextView;
import com.yelp.android.analytics.d;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.UserPhotoRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.fk.a;
import com.yelp.android.appdata.webrequests.fn;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.mediagrid.ActivityUserMediaGrid;
import com.yelp.android.ui.activities.photoviewer.ActivityBusinessMediaViewer;
import com.yelp.android.ui.activities.photoviewer.UserMediaViewer;
import com.yelp.android.ui.dialogs.DlgAddPhotoCaption;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.panels.SpanOfPhotosView;
import com.yelp.android.ui.util.ImageInputHelper;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.util.e;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class MoreAboutUser
  extends YelpListActivity
  implements PanelError.a
{
  private fn a;
  private View b;
  private User c;
  private Intent d;
  private final ApiRequest.b<User> e = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, User paramAnonymousUser)
    {
      MoreAboutUser.a(MoreAboutUser.this, paramAnonymousUser);
      MoreAboutUser.b(MoreAboutUser.this);
      paramAnonymousApiRequest = AppData.b().q();
      if (paramAnonymousApiRequest.a(MoreAboutUser.a(MoreAboutUser.this))) {
        paramAnonymousApiRequest.b(MoreAboutUser.a(MoreAboutUser.this));
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      MoreAboutUser.this.onError(paramAnonymousApiRequest, paramAnonymousYelpException);
    }
  };
  private final ApiRequest.b<fk.a> f = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, fk.a paramAnonymousa)
    {
      hideLoadingDialog();
      MoreAboutUser.c(MoreAboutUser.this);
      paramAnonymousApiRequest = ActivityUserProfile.a();
      sendBroadcast(paramAnonymousApiRequest);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      MoreAboutUser.this.onError(paramAnonymousApiRequest, paramAnonymousYelpException);
    }
  };
  
  public static Intent a(Context paramContext, User paramUser)
  {
    paramContext = new Intent(paramContext, MoreAboutUser.class);
    paramContext.putExtra("I feel so used :(", paramUser);
    return paramContext;
  }
  
  private View a(ViewGroup paramViewGroup)
  {
    b = getLayoutInflater().inflate(2130903431, paramViewGroup, false);
    g();
    return b;
  }
  
  private void a(User paramUser)
  {
    Object localObject = (ViewStub)findViewById(2131689967);
    getLayoutParamsheight = -2;
    getLayoutParamswidth = -1;
    ((ViewStub)localObject).setLayoutResource(2130903450);
    ((ViewStub)localObject).setInflatedId(2131689967);
    localObject = (TextView)((ViewStub)localObject).inflate();
    int i = 2131166771;
    if (AppData.b().q().a(paramUser)) {
      i = 2131166863;
    }
    ((TextView)localObject).setText(getString(i, new Object[] { paramUser.Z() }));
    r().setEmptyView((View)localObject);
  }
  
  private void b()
  {
    SimpleAdapter localSimpleAdapter = new SimpleAdapter(this, f(), 2130903449, new String[] { "label", "value" }, new int[] { 2131690121, 2131690122 });
    localSimpleAdapter.setViewBinder(new a());
    Object localObject;
    if (localSimpleAdapter.isEmpty())
    {
      localObject = (ViewGroup)findViewById(16908331);
      ((ViewGroup)localObject).addView(a((ViewGroup)localObject), 0);
    }
    for (;;)
    {
      r().setAdapter(localSimpleAdapter);
      r().f();
      return;
      localObject = r();
      ((ListView)localObject).addHeaderView(a((ViewGroup)localObject), null, false);
    }
  }
  
  private ArrayList<Map<String, CharSequence>> f()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = c.t().entrySet().iterator();
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
  
  private void g()
  {
    Object localObject = null;
    final ImageInputHelper localImageInputHelper = new ImageInputHelper(AppData.b().h(), 1041);
    TextView localTextView1 = (TextView)b.findViewById(2131690734);
    localTextView1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AppData.a(ViewIri.UserImageUpload);
        localImageInputHelper.a(MoreAboutUser.this);
      }
    });
    TextView localTextView2 = (TextView)b.findViewById(2131690735);
    boolean bool = getAppData().q().a(c);
    SpanOfPhotosView localSpanOfPhotosView;
    if (bool)
    {
      localTextView2.setText(getString(2131166175));
      localTextView2.setOnClickListener(new d(EventIri.ProfileMoreUserPhotos)
      {
        public void a(View paramAnonymousView)
        {
          paramAnonymousView.getContext().startActivity(ActivityUserMediaGrid.a(paramAnonymousView.getContext(), MoreAboutUser.a(MoreAboutUser.this).ae(), new ArrayList(MoreAboutUser.a(MoreAboutUser.this).ag()), new UserPhotoRequest(MoreAboutUser.a(MoreAboutUser.this), MoreAboutUser.a(MoreAboutUser.this).ag().size(), 20, null), 2131166349));
        }
      });
      localSpanOfPhotosView = (SpanOfPhotosView)b.findViewById(2131690733);
      localSpanOfPhotosView.a(createPendingResult(1046, new Intent(this, MoreAboutUser.class), 268435456), null);
      if (bool) {
        break label262;
      }
      label155:
      localSpanOfPhotosView.a(c.ag(), 2130837702, (View.OnClickListener)localObject);
      if (c.ag().size() > localSpanOfPhotosView.getMaxPhotoCount()) {
        break label276;
      }
      localTextView2.setVisibility(8);
    }
    for (;;)
    {
      if ((bool) && ((!bool) || (c.ag().size() >= localSpanOfPhotosView.b()))) {
        break label285;
      }
      localTextView1.setVisibility(8);
      return;
      localTextView2.setText(getString(2131166174, new Object[] { c.Z() }));
      break;
      label262:
      localObject = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          AppData.a(ViewIri.UserImageUpload);
          localImageInputHelper.a(MoreAboutUser.this);
        }
      };
      break label155;
      label276:
      localTextView2.setVisibility(0);
    }
    label285:
    localTextView1.setVisibility(0);
  }
  
  private void i()
  {
    if ((a != null) && (a.u())) {
      return;
    }
    a = new fn(e, c.ae(), null);
    a.f(new Void[0]);
  }
  
  public ViewIri getIri()
  {
    ViewIri localViewIri = ViewIri.MoreAboutUser;
    if (getAppData().q().a(c)) {
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
      paramInt1 = ActivityBusinessMediaViewer.a(paramIntent);
      startActivity(UserMediaViewer.a(this, c.ag(), paramInt1));
      return;
      if (paramInt2 == -1)
      {
        d = paramIntent;
        return;
      }
    } while (paramInt2 != 4);
    as.a(getText(2131166342), 1);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    r().setItemsCanFocus(true);
    c = ((User)getIntent().getParcelableExtra("I feel so used :("));
    if (getAppData().q().a(c)) {
      setTitle(getString(2131166166));
    }
    for (;;)
    {
      a(c);
      b();
      return;
      setTitle(getString(2131166165, new Object[] { c.Z() }));
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (a != null)
    {
      a.a(true);
      a.a(null);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    hideLoadingDialog();
    paramApiRequest = new PanelError(this);
    paramApiRequest.a(this);
    paramApiRequest.a(ErrorType.getTypeFromException(paramYelpException));
    r().setAdapter(new e(new View[] { paramApiRequest }));
  }
  
  public void onPause()
  {
    super.onPause();
    freezeRequest("update_user_request", a);
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
    a = ((fn)thawRequest("update_user_request", a, e));
    if (a == null) {
      i();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("I feel so used :(", c);
  }
  
  public void q_()
  {
    ((ViewGroup)findViewById(16908331)).removeView(b);
    i();
    b();
  }
  
  public static final class a
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
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.MoreAboutUser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
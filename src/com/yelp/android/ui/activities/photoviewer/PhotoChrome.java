package com.yelp.android.ui.activities.photoviewer;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.ListPopupWindow;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.fm;
import com.yelp.android.appdata.webrequests.fn;
import com.yelp.android.av.h;
import com.yelp.android.serializable.FeatureSet.Feature;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.Passport;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Video;
import com.yelp.android.ui.util.cn;
import com.yelp.android.ui.util.cw;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class PhotoChrome
  extends FrameLayout
  implements am
{
  private CompoundButton.OnCheckedChangeListener A;
  private ad B;
  private List<PhotoChrome.OptionsMenuItem> C = new ArrayList();
  private ae D;
  private boolean a;
  private boolean b;
  private boolean c;
  private boolean d;
  private boolean e;
  private boolean f;
  private boolean g;
  private boolean h;
  private Media i;
  private View j;
  private View k;
  private View l;
  private View m;
  private TextView n;
  private TextView o;
  private TextView p;
  private CompoundButton q;
  private View r;
  private cn s;
  private ListPopupWindow t;
  private Animation u;
  private Animation v;
  private Animation w;
  private Animation x;
  private Animation y;
  private Animation z;
  
  public PhotoChrome(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public PhotoChrome(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public PhotoChrome(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(2130903387, this, true);
    n = ((TextView)findViewById(2131493976));
    j = findViewById(2131493973);
    k = findViewById(2131493975);
    q = ((CompoundButton)findViewById(2131493689));
    o = ((TextView)findViewById(2131493690));
    p = ((TextView)findViewById(2131493978));
    l = findViewById(2131493050);
    r = findViewById(2131493604);
    m = findViewById(2131493974);
    g = true;
    b(paramContext);
    s = new cn(r, false);
    h = true;
  }
  
  @TargetApi(11)
  private void b(Context paramContext)
  {
    ContextThemeWrapper localContextThemeWrapper = new ContextThemeWrapper(paramContext, 2131689843);
    D = new ae(C, localContextThemeWrapper);
    t = new ListPopupWindow(localContextThemeWrapper, null);
    t.d((int)paramContext.getResources().getDimension(2131427447));
    t.a(m);
    t.a(D);
    t.a(true);
    t.a(new v(this));
    m.setOnClickListener(new w(this));
  }
  
  private boolean e()
  {
    dc localdc = AppData.b().m();
    return (localdc.c()) && (i != null) && (localdc.b().equals(i.getUserId()));
  }
  
  private void f()
  {
    Object localObject;
    if ((i != null) && ((!i.isMediaType(Media.MediaType.VIDEO)) || (!((Video)i).uploadedByBusinessOwner())))
    {
      localObject = getContext();
      if (!i.isMediaType(Media.MediaType.VIDEO)) {
        break label86;
      }
    }
    label86:
    for (int i1 = 2131166455;; i1 = 2131166453)
    {
      localObject = ((Context)localObject).getString(i1);
      C.add(new PhotoChrome.OptionsMenuItem((String)localObject, PhotoChrome.OptionsMenuItem.OptionsMenuType.FLAG));
      return;
    }
  }
  
  private void g()
  {
    o.setOnClickListener(new y(this));
  }
  
  private void h()
  {
    A = new z(this);
    q.setOnCheckedChangeListener(A);
    y = AnimationUtils.loadAnimation(getContext(), 2130968590);
    y.setDuration(cw.f);
    y.setFillAfter(true);
    z = AnimationUtils.loadAnimation(getContext(), 2130968589);
    z.setDuration(cw.f);
    z.setFillAfter(true);
    q.setOnTouchListener(new aa(this));
    q.setClickable(true);
    q.setEnabled(true);
    q.setFocusable(true);
  }
  
  private void i()
  {
    if (!a)
    {
      o.setVisibility(8);
      l.setVisibility(8);
      q.setVisibility(8);
      q.setOnCheckedChangeListener(null);
      return;
    }
    if (i == null)
    {
      q.setVisibility(4);
      o.setVisibility(4);
      return;
    }
    q.setVisibility(0);
    o.setVisibility(0);
    Feedback localFeedback = i.getFeedback();
    if (localFeedback == null)
    {
      o.setVisibility(8);
      return;
    }
    int i1 = localFeedback.getPositiveFeedbackCount();
    if (i1 > 0) {
      o.setText(getResources().getQuantityString(2131623995, i1, new Object[] { Integer.valueOf(i1) }));
    }
    for (;;)
    {
      q.setChecked(localFeedback.isLikedByUser());
      return;
      o.setVisibility(8);
    }
  }
  
  public void a()
  {
    Context localContext = getContext();
    C.clear();
    D.clear();
    int i1;
    if (e()) {
      if (c) {
        if (i.isMediaType(Media.MediaType.VIDEO))
        {
          i1 = 2131165690;
          String str = localContext.getString(i1);
          C.add(new PhotoChrome.OptionsMenuItem(str, PhotoChrome.OptionsMenuItem.OptionsMenuType.DELETE));
          label81:
          if ((i.isMediaType(Media.MediaType.PHOTO)) && (d)) {
            C.add(new PhotoChrome.OptionsMenuItem(localContext.getString(2131165733), PhotoChrome.OptionsMenuItem.OptionsMenuType.EDIT));
          }
        }
      }
    }
    for (;;)
    {
      if ((e) && (i.getBusinessId() != null)) {
        C.add(new PhotoChrome.OptionsMenuItem(localContext.getString(2131165648), PhotoChrome.OptionsMenuItem.OptionsMenuType.VIEW));
      }
      D.a(C);
      if (!D.isEmpty()) {
        break label330;
      }
      m.setVisibility(8);
      return;
      i1 = 2131165689;
      break;
      if (!(localContext instanceof UserMediaViewer)) {
        break label81;
      }
      C.add(new PhotoChrome.OptionsMenuItem(localContext.getString(2131165316), PhotoChrome.OptionsMenuItem.OptionsMenuType.ADD_PHOTO));
      break label81;
      f();
      if ((i.isMediaType(Media.MediaType.PHOTO)) && (i.getUserId() != null) && (!i.getUserPassport().isFeatureDisabled(FeatureSet.Feature.SEND_COMPLIMENT))) {
        C.add(new PhotoChrome.OptionsMenuItem(localContext.getString(2131166544), PhotoChrome.OptionsMenuItem.OptionsMenuType.COMPLIMENT));
      }
    }
    label330:
    m.setVisibility(0);
  }
  
  public void a(Media paramMedia)
  {
    int i1 = 8;
    if (paramMedia == null)
    {
      n.setVisibility(4);
      p.setVisibility(4);
      r.setVisibility(4);
      q.setVisibility(4);
      o.setVisibility(4);
      m.setVisibility(4);
      return;
    }
    i = paramMedia;
    a();
    i();
    n.setVisibility(0);
    n.setText(i.getCaption());
    paramMedia = i.getTimeCreated();
    if (paramMedia != null)
    {
      TextView localTextView = p;
      if (g) {
        i1 = 0;
      }
      localTextView.setVisibility(i1);
      p.setText(StringUtils.a(getContext(), StringUtils.Format.LONG, paramMedia));
    }
    for (;;)
    {
      paramMedia = i.getUserPassport();
      if ((paramMedia != null) && (paramMedia.getName() != null)) {
        break;
      }
      r.setVisibility(4);
      return;
      p.setVisibility(8);
    }
    r.setVisibility(0);
    s.a(getContext(), paramMedia.getName(), paramMedia.getFriendCount(), paramMedia.getReviewCount(), paramMedia.getPhotoCount(), paramMedia.getVideoCount(), paramMedia.getMediaCount(), paramMedia.getProfileThumbnail(), false);
    r.setOnClickListener(new ab(this, paramMedia));
  }
  
  public void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, ad paramad)
  {
    b = paramBoolean1;
    a = paramBoolean2;
    c = paramBoolean3;
    d = paramBoolean4;
    e = paramBoolean5;
    f = paramBoolean6;
    if (f) {
      j.setVisibility(8);
    }
    B = paramad;
    if (!b)
    {
      setVisibility(8);
      B = null;
      return;
    }
    paramad = getContext();
    v = AnimationUtils.loadAnimation(paramad, 2130968605);
    u = AnimationUtils.loadAnimation(paramad, 2130968611);
    x = AnimationUtils.loadAnimation(paramad, 2130968602);
    w = AnimationUtils.loadAnimation(paramad, 2130968607);
    u.setAnimationListener(new x(this));
    if (a)
    {
      g();
      h();
    }
    a(null);
  }
  
  public void b()
  {
    if (!b) {
      return;
    }
    if (h)
    {
      c();
      return;
    }
    d();
  }
  
  public void c()
  {
    if (!h) {
      return;
    }
    j.startAnimation(u);
    k.startAnimation(w);
    t.a();
    h = false;
  }
  
  public void d()
  {
    if (h) {
      return;
    }
    if (!f)
    {
      j.setVisibility(0);
      j.startAnimation(v);
    }
    k.setVisibility(0);
    k.startAnimation(x);
    h = true;
  }
  
  public boolean isShown()
  {
    return h;
  }
  
  public void setLikeButtonChecked(boolean paramBoolean)
  {
    int i1 = 1;
    Object localObject1 = i.getFeedback();
    if ((paramBoolean) && (!((Feedback)localObject1).isLikedByUser())) {
      ((Feedback)localObject1).addPositiveFeedback();
    }
    for (;;)
    {
      i();
      HashMap localHashMap;
      Object localObject2;
      if (i1 != 0)
      {
        localHashMap = new HashMap();
        if (!i.isMediaType(Media.MediaType.VIDEO)) {
          break label174;
        }
        localObject2 = (Video)i;
        localObject1 = new fn((Video)localObject2, paramBoolean);
        localHashMap.put("id", ((Video)localObject2).getBusinessId());
        localHashMap.put("video_id", ((Video)localObject2).getId());
        localHashMap.put("video_source", ((Video)localObject2).getVideoSource());
        AppData.a(EventIri.BusinessSaveVideoFeedback, localHashMap);
      }
      for (;;)
      {
        if (B != null) {
          B.a(paramBoolean);
        }
        ((h)localObject1).execute(new Void[0]);
        return;
        if ((paramBoolean) || (!((Feedback)localObject1).isLikedByUser())) {
          break label254;
        }
        ((Feedback)localObject1).removePositiveFeedback();
        break;
        label174:
        localObject2 = (Photo)i;
        localObject1 = new fm((Photo)localObject2, paramBoolean);
        localHashMap.put("id", ((Photo)localObject2).getBusinessId());
        localHashMap.put("photo_id", ((Photo)localObject2).getId());
        AppData.a(EventIri.BusinessSavePhotoFeedback, localHashMap);
        new ObjectDirtyEvent(i, "com.yelp.android.media.update").a(getContext());
      }
      label254:
      i1 = 0;
    }
  }
  
  public void setLikeDrawable(int paramInt)
  {
    q.setButtonDrawable(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.PhotoChrome
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
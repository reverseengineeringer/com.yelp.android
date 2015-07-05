package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Pair;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.services.ShareService;
import com.yelp.android.services.ShareService.ShareObjectType;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.util.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Set;

public abstract class ActivityRetryShare
  extends YelpActivity
{
  public static final dw g = new dw(2131166565, 2131166566, 2131165774);
  public static final dw h = new dw(2131166565, 2131166566, 2131165775);
  public static final dw i = new dw(2131166565, 2131166566, 2131165771);
  public static final dw j = new dw(2131166565, 2131166566, 2131165770);
  protected Queue<ShareRequest.ShareType> a;
  protected Queue<YelpException> b;
  protected FacebookConnectManager<ActivityRetryShare> c;
  protected Set<ShareRequest.ShareType> d;
  Handler e;
  dw f;
  protected final fg k = new du(this);
  
  public static Intent a(Context paramContext, Collection<ShareRequest.ShareType> paramCollection1, Collection<ShareRequest.ShareType> paramCollection2)
  {
    ArrayList localArrayList1 = new ArrayList(paramCollection1.size());
    ArrayList localArrayList2 = new ArrayList(paramCollection1.size());
    paramCollection1 = paramCollection1.iterator();
    while (paramCollection1.hasNext())
    {
      localArrayList1.add((ShareRequest.ShareType)paramCollection1.next());
      localArrayList2.add(null);
    }
    paramContext = new Intent(paramContext, ActivityRetryShare.class);
    paramContext.putExtra("types", f.a(localArrayList1));
    paramContext.putExtra("yelp:retry_shares", f.a(paramCollection2));
    paramContext.putExtra("exceptions", localArrayList2);
    return paramContext;
  }
  
  private void a(int paramInt)
  {
    if (a.isEmpty()) {
      finish();
    }
    while ((ShareRequest.ShareType)a.peek() != ShareRequest.ShareType.FACEBOOK) {
      return;
    }
    showYesNoDialog(paramInt, 2131166752, 17039360, 1);
  }
  
  protected static Intent b(Context paramContext, String paramString, List<Pair<ShareRequest.ShareType, ? extends YelpException>> paramList)
  {
    ArrayList localArrayList1 = new ArrayList(paramList.size());
    ArrayList localArrayList2 = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Pair localPair = (Pair)paramList.next();
      localArrayList1.add(first);
      localArrayList2.add(second);
    }
    paramContext = new Intent(paramContext, ActivityRetryBusinessPhotoShare.class);
    paramContext.putExtra("types", f.a(localArrayList1));
    paramContext.putExtra("exceptions", localArrayList2);
    paramContext.putExtra("yelp:object_id", paramString);
    return paramContext;
  }
  
  public Intent a(Collection<ShareRequest.ShareType> paramCollection)
  {
    paramCollection = getIntent().getStringExtra("yelp:object_id");
    if (!TextUtils.isEmpty(paramCollection)) {
      return ShareService.a(this, b(), paramCollection, d, true);
    }
    return null;
  }
  
  public dw a()
  {
    return g;
  }
  
  public void a(ShareRequest.ShareType paramShareType)
  {
    switch (dv.a[paramShareType.ordinal()])
    {
    default: 
      d.add(paramShareType);
      a.poll();
      b.poll();
      c();
    case 1: 
      do
      {
        return;
      } while (c.f());
      c.e();
      return;
    }
    startActivityIfNeeded(ActivityTwitterSignIn.a(this), 1042);
  }
  
  abstract ShareService.ShareObjectType b();
  
  void c()
  {
    if (a.isEmpty())
    {
      finish();
      return;
    }
    ShareRequest.ShareType localShareType = (ShareRequest.ShareType)a.peek();
    YelpException localYelpException = (YelpException)b.peek();
    if (localYelpException == null)
    {
      a(localShareType);
      return;
    }
    if (ShareService.a(localYelpException))
    {
      showYesNoDialog(getString(f.a, new Object[] { getText(localShareType.getNameStringResource()) }), 2131166030, 17039360, 0);
      return;
    }
    showYesNoDialog(getString(f.b, new Object[] { getText(localShareType.getNameStringResource()) }), 2131166464, 17039360, 0);
  }
  
  public void finish()
  {
    Intent localIntent = null;
    if (!d.isEmpty()) {
      localIntent = a(d);
    }
    if (localIntent != null) {
      startService(localIntent);
    }
    for (;;)
    {
      super.finish();
      return;
      localIntent = new Intent();
      localIntent.putExtra("yelp:retry_shares", f.a(d));
      setResult(-1, localIntent);
    }
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    c.a(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1042)
    {
      if (paramInt2 != 0) {
        d.add(ShareRequest.ShareType.TWITTER);
      }
      a.poll();
      b.poll();
      c();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    f = a();
    e = new Handler();
    c = new FacebookConnectManager(this, 2131166497, k, FacebookConnectManager.FbPermissionSet.DEFAULT_READ_PUBLISH, 2);
    if (paramBundle != null)
    {
      a = new LinkedList(f.a(paramBundle, "types", ShareRequest.ShareType.values()));
      b = new LinkedList(paramBundle.getParcelableArrayList("exceptions"));
      d = new HashSet(f.a(paramBundle, "yelp:retry_shares", ShareRequest.ShareType.values()));
      return;
    }
    paramBundle = getIntent();
    a = new LinkedList(f.a(paramBundle.getIntArrayExtra("types"), ShareRequest.ShareType.values()));
    b = new LinkedList(paramBundle.getParcelableArrayListExtra("exceptions"));
    if (paramBundle.hasExtra("yelp:retry_shares"))
    {
      d = new HashSet(f.a(paramBundle.getIntArrayExtra("yelp:retry_shares"), ShareRequest.ShareType.values()));
      return;
    }
    d = new HashSet();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    f.a(paramBundle, "types", a);
    paramBundle.putParcelableArrayList("exceptions", new ArrayList(b));
    f.a(paramBundle, "yelp:retry_shares", d);
  }
  
  protected void onStart()
  {
    super.onStart();
    if ((!a.isEmpty()) || (!d.isEmpty())) {
      c();
    }
  }
  
  public void onYesNoDialogSelection(boolean paramBoolean, int paramInt)
  {
    ShareRequest.ShareType localShareType = (ShareRequest.ShareType)a.poll();
    YelpException localYelpException = (YelpException)b.poll();
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      if (paramBoolean)
      {
        if (ShareService.a(localYelpException))
        {
          a(localShareType);
          return;
        }
        d.add(localShareType);
      }
      e.post(new ds(this));
      return;
    }
    if (paramBoolean)
    {
      a(localShareType);
      return;
    }
    e.post(new dt(this));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRetryShare
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
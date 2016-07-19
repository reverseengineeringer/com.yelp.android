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
import com.yelp.android.util.d;
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
  public static final a i = new a(2131166565, 2131166566, 2131165862);
  public static final a j = new a(2131166565, 2131166566, 2131165863);
  public static final a k = new a(2131166565, 2131166566, 2131165857);
  public static final a l = new a(2131166565, 2131166566, 2131165856);
  public static final a m = new a(2131166565, 2131166566, 2131165861);
  protected Queue<ShareRequest.ShareType> a;
  protected Queue<YelpException> b;
  protected ArrayList<ShareRequest.ShareType> c;
  protected FacebookConnectManager<ActivityRetryShare> d;
  protected Set<ShareRequest.ShareType> e;
  protected Set<ShareRequest.ShareType> f;
  Handler g;
  a h;
  protected final FacebookConnectManager.a n = new FacebookConnectManager.a()
  {
    public void a(FacebookConnectManager paramAnonymousFacebookConnectManager)
    {
      e.add(ShareRequest.ShareType.FACEBOOK);
      if (c.contains(ShareRequest.ShareType.FACEBOOK)) {
        f.add(ShareRequest.ShareType.FACEBOOK);
      }
      a.poll();
      b.poll();
      c();
    }
    
    public void a(FacebookConnectManager paramAnonymousFacebookConnectManager, Throwable paramAnonymousThrowable)
    {
      ActivityRetryShare.a(ActivityRetryShare.this, 2131165391);
    }
    
    public void b(FacebookConnectManager paramAnonymousFacebookConnectManager)
    {
      ActivityRetryShare.a(ActivityRetryShare.this, 2131165584);
    }
    
    public void c(FacebookConnectManager paramAnonymousFacebookConnectManager) {}
  };
  
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
    paramContext.putExtra("content_share_types", d.a(localArrayList1));
    paramContext.putExtra("retry_shares", d.a(paramCollection2));
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
    showYesNoDialog(paramInt, 2131166732, 17039360, 1);
  }
  
  protected static Intent b(Context paramContext, String paramString, List<Pair<ShareRequest.ShareType, ? extends YelpException>> paramList, Collection<ShareRequest.ShareType> paramCollection)
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
    paramContext.putExtra("content_share_types", d.a(localArrayList1));
    paramContext.putExtra("award_share_types", d.a(paramCollection));
    paramContext.putExtra("exceptions", localArrayList2);
    paramContext.putExtra("yelp:object_id", paramString);
    return paramContext;
  }
  
  private Intent d()
  {
    String str = getIntent().getStringExtra("yelp:object_id");
    if (!TextUtils.isEmpty(str)) {
      return ShareService.a(this, b(), str, f, e, true);
    }
    return null;
  }
  
  public a a()
  {
    return i;
  }
  
  public void a(ShareRequest.ShareType paramShareType)
  {
    switch (4.a[paramShareType.ordinal()])
    {
    default: 
      e.add(paramShareType);
      if (c.contains(paramShareType)) {
        f.add(paramShareType);
      }
      a.poll();
      b.poll();
      c();
    case 1: 
      do
      {
        return;
      } while (d.f());
      d.e();
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
      showYesNoDialog(getString(h.a, new Object[] { getText(localShareType.getNameStringResource()) }), 2131166090, 17039360, 0);
      return;
    }
    showYesNoDialog(getString(h.b, new Object[] { getText(localShareType.getNameStringResource()) }), 2131166469, 17039360, 0);
  }
  
  public void finish()
  {
    Intent localIntent = null;
    if (!e.isEmpty()) {
      localIntent = d();
    }
    if (localIntent != null) {
      startService(localIntent);
    }
    for (;;)
    {
      super.finish();
      return;
      localIntent = new Intent();
      localIntent.putExtra("retry_shares", d.a(e));
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
    d.a(paramInt1, paramInt2, paramIntent);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    h = a();
    g = new Handler();
    d = new FacebookConnectManager(this, 2131166492, n, FacebookConnectManager.FbPermissionSet.DEFAULT_READ_PUBLISH);
    if (paramBundle != null)
    {
      a = new LinkedList(d.a(paramBundle, "content_share_types", ShareRequest.ShareType.values()));
      b = new LinkedList(paramBundle.getParcelableArrayList("exceptions"));
      e = new HashSet(d.a(paramBundle, "retry_shares", ShareRequest.ShareType.values()));
      return;
    }
    paramBundle = getIntent();
    a = new LinkedList(d.a(paramBundle.getIntArrayExtra("content_share_types"), ShareRequest.ShareType.values()));
    c = d.a(paramBundle.getIntArrayExtra("award_share_types"), ShareRequest.ShareType.values());
    b = new LinkedList(paramBundle.getParcelableArrayListExtra("exceptions"));
    if (paramBundle.hasExtra("retry_shares")) {}
    for (e = new HashSet(d.a(paramBundle.getIntArrayExtra("retry_shares"), ShareRequest.ShareType.values()));; e = new HashSet())
    {
      f = new HashSet();
      return;
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    d.a(paramBundle, "content_share_types", a);
    paramBundle.putParcelableArrayList("exceptions", new ArrayList(b));
    d.a(paramBundle, "retry_shares", e);
  }
  
  protected void onStart()
  {
    super.onStart();
    if (!a.isEmpty())
    {
      c();
      return;
    }
    finish();
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
        e.add(localShareType);
        if (c.contains(localShareType)) {
          f.add(localShareType);
        }
      }
      g.post(new Runnable()
      {
        public void run()
        {
          c();
        }
      });
      return;
    }
    if (paramBoolean)
    {
      a(localShareType);
      return;
    }
    g.post(new Runnable()
    {
      public void run()
      {
        c();
      }
    });
  }
  
  public static final class a
  {
    public final int a;
    public final int b;
    public final int c;
    
    public a(int paramInt1, int paramInt2, int paramInt3)
    {
      a = paramInt1;
      b = paramInt2;
      c = paramInt3;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRetryShare
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
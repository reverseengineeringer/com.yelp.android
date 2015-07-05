package com.yelp.android.ui.activities.support;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import com.adjust.sdk.e;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.av.a;
import com.yelp.android.database.q;
import com.yelp.android.ui.dialogs.bn;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.panels.aa;
import com.yelp.android.ui.util.cf;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.dg;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.Iterator;

public class h
{
  private ApiRequest<?, ?, ?> a;
  private AsyncTask<?, ?, ?> b;
  private l c;
  private int d = 0;
  private int e = 17039379;
  private int f = 17039369;
  private CharSequence g;
  private CharSequence h;
  private int i = 0;
  private ArrayList<View> j;
  private ErrorType k;
  private PanelLoading l;
  private PanelError m;
  private o n;
  private cf o;
  private Resources.Theme p;
  private final AppData q;
  private Handler r;
  private final YelpActivity s;
  private dg t;
  
  public h(YelpActivity paramYelpActivity)
  {
    s = paramYelpActivity;
    q = AppData.b();
  }
  
  protected View a(int paramInt1, int paramInt2)
  {
    return cp.a(s.getWindow().getDecorView(), paramInt1, paramInt2);
  }
  
  protected void a()
  {
    e.a(s);
    p();
    q.a(this);
  }
  
  public void a(int paramInt)
  {
    if (o != null)
    {
      p = o.a(paramInt, s.getTheme());
      return;
    }
    s.setSuperTheme(paramInt);
  }
  
  protected void a(int paramInt, Dialog paramDialog)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 90234: 
      p localp = new p(this, s, i);
      paramDialog = (AlertDialog)paramDialog;
      paramDialog.setMessage(g);
      paramDialog.setButton(-1, s.getText(e), localp);
      paramDialog.setButton(-2, s.getText(f), localp);
      return;
    case 82021: 
      if (d != 0) {}
      for (paramInt = d;; paramInt = 2131166015)
      {
        ((ProgressDialog)paramDialog).setMessage(s.getText(paramInt));
        paramDialog.setOnCancelListener(new k(a, c));
        return;
      }
    }
    paramDialog = (AlertDialog)paramDialog;
    paramDialog.setMessage(g);
    paramDialog.setTitle(h);
  }
  
  public void a(AsyncTask<?, ?, ?> paramAsyncTask)
  {
    a(paramAsyncTask, null, 0);
  }
  
  public void a(AsyncTask<?, ?, ?> paramAsyncTask, l paraml, int paramInt)
  {
    b = paramAsyncTask;
    d = paramInt;
    c = paraml;
    s.showDialog(82021);
  }
  
  protected void a(Bundle paramBundle)
  {
    p = null;
    o = new cf(s);
    t = new dg(this);
    if (paramBundle != null)
    {
      paramBundle.setClassLoader(s.getClassLoader());
      d = paramBundle.getInt("yelp:progress_text", d);
      e = paramBundle.getInt("yelp:dialog_positive", e);
      f = paramBundle.getInt("yelp:dialog_negative", f);
      g = paramBundle.getCharSequence("yelp:dialog_message");
      h = paramBundle.getCharSequence("yelp:dialog_title");
      i = paramBundle.getInt("yelp:dialog_context", i);
    }
  }
  
  public final void a(View paramView)
  {
    j = paramView.getTouchables();
    paramView = j.iterator();
    while (paramView.hasNext()) {
      ((View)paramView.next()).setEnabled(false);
    }
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest)
  {
    a(paramApiRequest, new i(this));
    g();
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, int paramInt)
  {
    a = paramApiRequest;
    if (m != null) {
      m.setVisibility(8);
    }
    paramApiRequest = j();
    paramApiRequest.b(paramInt);
    paramApiRequest.setVisibility(0);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, l paraml)
  {
    a(paramApiRequest, null, 0);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, l paraml, int paramInt)
  {
    a = paramApiRequest;
    d = paramInt;
    c = paraml;
    s.showDialog(82021);
  }
  
  protected void a(o paramo, boolean paramBoolean, int paramInt)
  {
    n = paramo;
    o().postDelayed(new j(this, paramBoolean, paramInt), 10L);
  }
  
  public void a(ErrorType paramErrorType)
  {
    k = paramErrorType;
    PanelError localPanelError = i();
    localPanelError.a(paramErrorType);
    localPanelError.setVisibility(0);
  }
  
  public void a(ErrorType paramErrorType, aa paramaa)
  {
    k = paramErrorType;
    PanelError localPanelError = i();
    localPanelError.a(paramErrorType, paramaa);
    localPanelError.setVisibility(0);
  }
  
  public void a(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    g = paramCharSequence;
    e = paramInt1;
    f = paramInt2;
    i = paramInt3;
    s.showDialog(90234);
  }
  
  public void a(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    h = paramCharSequence1;
    g = paramCharSequence2;
    s.showDialog(2347590);
  }
  
  public boolean a(Menu paramMenu)
  {
    com.yelp.android.ui.k.a(s, paramMenu);
    return true;
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    return com.yelp.android.ui.k.a(s, paramMenuItem);
  }
  
  protected Dialog b(int paramInt)
  {
    Object localObject;
    switch (paramInt)
    {
    default: 
      return null;
    case 90234: 
      localObject = new p(this, s, i);
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(s).setMessage(g);
      if (e > 0) {
        localBuilder.setPositiveButton(e, (DialogInterface.OnClickListener)localObject);
      }
      if (f > 0) {
        localBuilder.setNegativeButton(f, (DialogInterface.OnClickListener)localObject);
      }
      localBuilder.setCancelable(false);
      return localBuilder.create();
    case 82021: 
      localObject = new bn(s);
      ((ProgressDialog)localObject).setProgressStyle(0);
      if (d != 0) {}
      for (paramInt = d;; paramInt = 2131166015)
      {
        ((ProgressDialog)localObject).setMessage(s.getText(paramInt));
        ((ProgressDialog)localObject).setCancelable(true);
        ((ProgressDialog)localObject).setOnCancelListener(new k(a, c));
        return (Dialog)localObject;
      }
    case 2347590: 
      localObject = new AlertDialog.Builder(s).setMessage(g);
      if (h != null) {
        ((AlertDialog.Builder)localObject).setTitle(h);
      }
      ((AlertDialog.Builder)localObject).setIcon(0);
      ((AlertDialog.Builder)localObject).setNeutralButton(2131166235, null);
      ((AlertDialog.Builder)localObject).setCancelable(true);
      return ((AlertDialog.Builder)localObject).create();
    }
    return t.b();
  }
  
  protected void b()
  {
    
    if (s.isFinishing())
    {
      if (a != null)
      {
        a.cancel(true);
        a = null;
      }
      if (b != null)
      {
        b.cancel(true);
        b = null;
      }
    }
  }
  
  protected void b(Bundle paramBundle)
  {
    paramBundle.putInt("yelp:progress_text", d);
    paramBundle.putInt("yelp:dialog_positive", e);
    paramBundle.putInt("yelp:dialog_negative", f);
    paramBundle.putCharSequence("yelp:dialog_message", g);
    paramBundle.putCharSequence("yelp:dialog_title", h);
    paramBundle.putInt("yelp:dialog_context", i);
    paramBundle.putParcelable("yelp:error", k);
  }
  
  protected void b(View paramView)
  {
    ((FrameLayout)s.findViewById(2131493332)).addView(paramView);
  }
  
  public Activity c()
  {
    return s;
  }
  
  protected void c(Bundle paramBundle)
  {
    k = ((ErrorType)paramBundle.getParcelable("yelp:error"));
    if (k != null)
    {
      if ((s instanceof YelpActivity)) {
        s.populateError(k);
      }
    }
    else {
      return;
    }
    a(k);
  }
  
  protected void c(View paramView)
  {
    ((FrameLayout)s.findViewById(2131493332)).removeView(paramView);
  }
  
  public Resources.Theme d()
  {
    if (p != null) {
      return p;
    }
    Resources.Theme localTheme = o.a(0, s.getSuperTheme());
    p = localTheme;
    return localTheme;
  }
  
  public dg e()
  {
    return t;
  }
  
  public void f()
  {
    s.removeDialog(82021);
    a = null;
    b = null;
    c = null;
  }
  
  public final void g()
  {
    View localView = s.getCurrentFocus();
    Object localObject = localView;
    if (localView == null) {
      localObject = s.getWindow().getDecorView();
    }
    j = ((View)localObject).getTouchables();
    localObject = j.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((View)((Iterator)localObject).next()).setEnabled(false);
    }
  }
  
  public final void h()
  {
    f();
    if (j != null)
    {
      Iterator localIterator = j.iterator();
      while (localIterator.hasNext()) {
        ((View)localIterator.next()).setEnabled(true);
      }
    }
    j = null;
  }
  
  protected PanelError i()
  {
    if (m == null) {
      m = k();
    }
    return m;
  }
  
  protected PanelLoading j()
  {
    if (l == null) {
      l = l();
    }
    return l;
  }
  
  protected PanelError k()
  {
    PanelError localPanelError = new PanelError(s);
    if ((s instanceof aa))
    {
      localPanelError.a((aa)s);
      if (!(s instanceof YelpActivity)) {
        break label66;
      }
      s.addStatusView(localPanelError);
    }
    for (;;)
    {
      localPanelError.setVisibility(8);
      return localPanelError;
      localPanelError.a();
      break;
      label66:
      b(localPanelError);
    }
  }
  
  protected PanelLoading l()
  {
    PanelLoading localPanelLoading = new PanelLoading(s, null);
    localPanelLoading.a(c().getResources().getColor(17170443));
    if ((s instanceof YelpActivity)) {
      s.addStatusView(localPanelLoading);
    }
    for (;;)
    {
      localPanelLoading.setVisibility(8);
      return localPanelLoading;
      b(localPanelLoading);
    }
  }
  
  public AppData m()
  {
    return q;
  }
  
  public q n()
  {
    return q.i();
  }
  
  public Handler o()
  {
    if (r == null) {
      r = new Handler(Looper.getMainLooper());
    }
    return r;
  }
  
  public final void p()
  {
    a.a(s, AppData.b());
  }
  
  public void q()
  {
    if (l != null)
    {
      l.setVisibility(8);
      l.c();
      c(l);
      l = null;
    }
  }
  
  public void r()
  {
    k = null;
    if (m != null)
    {
      c(m);
      m = null;
    }
  }
  
  public boolean s()
  {
    return AppData.b().m().c();
  }
  
  public boolean t()
  {
    return AppData.b().m().e();
  }
  
  public String u()
  {
    if (!s()) {
      return "anonymous";
    }
    if (t()) {
      return "confirmed";
    }
    return "unconfirmed";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
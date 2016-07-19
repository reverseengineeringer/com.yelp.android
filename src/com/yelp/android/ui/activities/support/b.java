package com.yelp.android.ui.activities.support;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.FragmentActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import com.comscore.analytics.k;
import com.yelp.android.analytics.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.database.g;
import com.yelp.android.ui.dialogs.LocationSettingsDialog;
import com.yelp.android.ui.dialogs.e;
import com.yelp.android.ui.f;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.am;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.ax;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.Iterator;

public class b
{
  private ApiRequest<?, ?, ?> a;
  private AsyncTask<?, ?, ?> b;
  private b c;
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
  private e n;
  private am o;
  private Resources.Theme p;
  private final AppData q;
  private Handler r;
  private final YelpActivity s;
  private ax t;
  
  public b(YelpActivity paramYelpActivity)
  {
    s = paramYelpActivity;
    q = AppData.b();
  }
  
  protected View a(int paramInt1, int paramInt2)
  {
    return ar.a(s.getWindow().getDecorView(), paramInt1, paramInt2);
  }
  
  protected void a()
  {
    k.a();
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
      f localf = new f(s, i);
      paramDialog = (AlertDialog)paramDialog;
      paramDialog.setMessage(g);
      paramDialog.setButton(-1, s.getText(e), localf);
      paramDialog.setButton(-2, s.getText(f), localf);
      return;
    case 82021: 
      if (d != 0) {}
      for (paramInt = d;; paramInt = 2131166073)
      {
        ((ProgressDialog)paramDialog).setMessage(s.getText(paramInt));
        paramDialog.setOnCancelListener(new a(a, c));
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
  
  public void a(AsyncTask<?, ?, ?> paramAsyncTask, b paramb, int paramInt)
  {
    b = paramAsyncTask;
    d = paramInt;
    c = paramb;
    s.showDialog(82021);
  }
  
  protected void a(Bundle paramBundle)
  {
    p = null;
    o = new am(s);
    t = new ax(this);
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
    a(paramApiRequest, new b()
    {
      public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest)
      {
        f();
        h();
      }
    });
    g();
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, int paramInt)
  {
    a = paramApiRequest;
    if (m != null) {
      m.setVisibility(8);
    }
    paramApiRequest = j();
    paramApiRequest.a(paramInt);
    paramApiRequest.setVisibility(0);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, b paramb)
  {
    a(paramApiRequest, null, 0);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, b paramb, int paramInt)
  {
    a = paramApiRequest;
    d = paramInt;
    c = paramb;
    s.showDialog(82021);
  }
  
  protected void a(e parame, final boolean paramBoolean, final int paramInt)
  {
    n = parame;
    o().postDelayed(new Runnable()
    {
      public void run()
      {
        LocationSettingsDialog localLocationSettingsDialog = LocationSettingsDialog.a(paramBoolean, paramInt);
        localLocationSettingsDialog.a(b.a(b.this));
        localLocationSettingsDialog.show(b.b(b.this).getSupportFragmentManager(), null);
      }
    }, 10L);
  }
  
  public void a(ErrorType paramErrorType)
  {
    k = paramErrorType;
    PanelError localPanelError = i();
    localPanelError.a(paramErrorType);
    localPanelError.setVisibility(0);
  }
  
  public void a(ErrorType paramErrorType, PanelError.a parama)
  {
    k = paramErrorType;
    PanelError localPanelError = i();
    localPanelError.a(paramErrorType, parama);
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
    f.a(s, paramMenu);
    return true;
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    return f.a(s, paramMenuItem);
  }
  
  protected Dialog b(int paramInt)
  {
    Object localObject;
    switch (paramInt)
    {
    default: 
      return null;
    case 90234: 
      localObject = new f(s, i);
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
      localObject = new e(s);
      ((ProgressDialog)localObject).setProgressStyle(0);
      if (d != 0) {}
      for (paramInt = d;; paramInt = 2131166073)
      {
        ((ProgressDialog)localObject).setMessage(s.getText(paramInt));
        ((ProgressDialog)localObject).setCancelable(true);
        ((ProgressDialog)localObject).setOnCancelListener(new a(a, c));
        return (Dialog)localObject;
      }
    case 2347590: 
      localObject = new AlertDialog.Builder(s).setMessage(g);
      if (h != null) {
        ((AlertDialog.Builder)localObject).setTitle(h);
      }
      ((AlertDialog.Builder)localObject).setIcon(0);
      ((AlertDialog.Builder)localObject).setNeutralButton(2131166990, null);
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
        a.a(true);
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
    paramBundle.putSerializable("yelp:error", k);
    if (r != null) {
      r.removeCallbacksAndMessages(null);
    }
  }
  
  protected void b(View paramView)
  {
    ((FrameLayout)s.findViewById(2131689997)).addView(paramView);
  }
  
  public Activity c()
  {
    return s;
  }
  
  protected void c(Bundle paramBundle)
  {
    k = ((ErrorType)paramBundle.getSerializable("yelp:error"));
    if (k != null) {
      s.populateError(k);
    }
  }
  
  protected void c(View paramView)
  {
    ((FrameLayout)s.findViewById(2131689997)).removeView(paramView);
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
  
  public ax e()
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
    if ((s instanceof PanelError.a)) {
      localPanelError.a((PanelError.a)s);
    }
    for (;;)
    {
      s.addStatusView(localPanelError);
      localPanelError.setVisibility(8);
      return localPanelError;
      localPanelError.a();
    }
  }
  
  protected PanelLoading l()
  {
    PanelLoading localPanelLoading = new PanelLoading(s, null);
    localPanelLoading.setBackgroundColor(c().getResources().getColor(17170443));
    s.addStatusView(localPanelLoading);
    localPanelLoading.setVisibility(8);
    return localPanelLoading;
  }
  
  public AppData m()
  {
    return q;
  }
  
  public g n()
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
    MetricsManager.a(s, AppData.b());
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
    return AppData.b().q().b();
  }
  
  public boolean t()
  {
    return AppData.b().q().d();
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
  
  private static class a
    implements DialogInterface.OnCancelListener
  {
    private ApiRequest<?, ?, ?> a;
    private b.b b;
    
    public a(ApiRequest<?, ?, ?> paramApiRequest, b.b paramb)
    {
      a = paramApiRequest;
      b = paramb;
    }
    
    public final void onCancel(DialogInterface paramDialogInterface)
    {
      if (a != null) {
        a.a(true);
      }
      if (b != null) {
        b.a(a);
      }
      b = null;
      a = null;
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(ApiRequest<?, ?, ?> paramApiRequest);
  }
  
  public static final class c
    implements b.b
  {
    private Activity a;
    
    public c(Activity paramActivity)
    {
      if (paramActivity == null) {
        throw new NullPointerException("Must be a non null Activity");
      }
      a = paramActivity;
    }
    
    public void a(ApiRequest<?, ?, ?> paramApiRequest)
    {
      if (a != null) {
        a.finish();
      }
      a = null;
    }
  }
  
  public static abstract interface d
    extends a
  {
    public abstract Resources.Theme getSuperTheme();
    
    public abstract void onYesNoDialogSelection(boolean paramBoolean, int paramInt);
    
    public abstract void setSuperTheme(int paramInt);
  }
  
  public static abstract interface e
  {
    public abstract void a(boolean paramBoolean);
    
    public abstract void b();
  }
  
  private class f
    implements DialogInterface.OnClickListener
  {
    private final Activity b;
    private final int c;
    
    public f(Activity paramActivity, int paramInt)
    {
      b = paramActivity;
      c = paramInt;
    }
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      if (paramInt == -1)
      {
        ((b.d)b).onYesNoDialogSelection(true, c);
        return;
      }
      ((b.d)b).onYesNoDialogSelection(false, c);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
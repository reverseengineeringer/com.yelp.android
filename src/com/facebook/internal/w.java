package com.facebook.internal;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.AccessToken;
import com.facebook.FacebookDialogException;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookServiceException;
import com.facebook.o.c;
import com.facebook.o.f;

public class w
  extends Dialog
{
  private String a;
  private String b = "fbconnect://success";
  private c c;
  private WebView d;
  private ProgressDialog e;
  private ImageView f;
  private FrameLayout g;
  private boolean h = false;
  private boolean i = false;
  private boolean j = false;
  
  public w(Context paramContext, String paramString)
  {
    this(paramContext, paramString, 16973840);
  }
  
  public w(Context paramContext, String paramString, int paramInt)
  {
    super(paramContext, paramInt);
    a = paramString;
  }
  
  public w(Context paramContext, String paramString, Bundle paramBundle, int paramInt, c paramc)
  {
    super(paramContext, paramInt);
    paramContext = paramBundle;
    if (paramBundle == null) {
      paramContext = new Bundle();
    }
    paramContext.putString("redirect_uri", "fbconnect://success");
    paramContext.putString("display", "touch");
    a = u.a(s.a(), s.d() + "/" + "dialog/" + paramString, paramContext).toString();
    c = paramc;
  }
  
  private int a(int paramInt1, float paramFloat, int paramInt2, int paramInt3)
  {
    double d1 = 0.5D;
    int k = (int)(paramInt1 / paramFloat);
    if (k <= paramInt2) {
      d1 = 1.0D;
    }
    for (;;)
    {
      return (int)(d1 * paramInt1);
      if (k < paramInt3) {
        d1 = 0.5D + (paramInt3 - k) / (paramInt3 - paramInt2) * 0.5D;
      }
    }
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  private void a(int paramInt)
  {
    LinearLayout localLinearLayout = new LinearLayout(getContext());
    d = new WebView(getContext().getApplicationContext())
    {
      public void onWindowFocusChanged(boolean paramAnonymousBoolean)
      {
        try
        {
          super.onWindowFocusChanged(paramAnonymousBoolean);
          return;
        }
        catch (NullPointerException localNullPointerException) {}
      }
    };
    d.setVerticalScrollBarEnabled(false);
    d.setHorizontalScrollBarEnabled(false);
    d.setWebViewClient(new b(null));
    d.getSettings().setJavaScriptEnabled(true);
    d.loadUrl(a);
    d.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    d.setVisibility(4);
    d.getSettings().setSavePassword(false);
    d.getSettings().setSaveFormData(false);
    d.setFocusable(true);
    d.setFocusableInTouchMode(true);
    d.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (!paramAnonymousView.hasFocus()) {
          paramAnonymousView.requestFocus();
        }
        return false;
      }
    });
    localLinearLayout.setPadding(paramInt, paramInt, paramInt, paramInt);
    localLinearLayout.addView(d);
    localLinearLayout.setBackgroundColor(-872415232);
    g.addView(localLinearLayout);
  }
  
  private void e()
  {
    f = new ImageView(getContext());
    f.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        cancel();
      }
    });
    Drawable localDrawable = getContext().getResources().getDrawable(o.c.com_facebook_close);
    f.setImageDrawable(localDrawable);
    f.setVisibility(4);
  }
  
  protected Bundle a(String paramString)
  {
    paramString = Uri.parse(paramString);
    Bundle localBundle = u.c(paramString.getQuery());
    localBundle.putAll(u.c(paramString.getFragment()));
    return localBundle;
  }
  
  protected void a(Bundle paramBundle)
  {
    if ((c != null) && (!h))
    {
      h = true;
      c.a(paramBundle, null);
      dismiss();
    }
  }
  
  public void a(c paramc)
  {
    c = paramc;
  }
  
  protected void a(Throwable paramThrowable)
  {
    if ((c != null) && (!h))
    {
      h = true;
      if (!(paramThrowable instanceof FacebookException)) {
        break label47;
      }
    }
    label47:
    for (paramThrowable = (FacebookException)paramThrowable;; paramThrowable = new FacebookException(paramThrowable))
    {
      c.a(null, paramThrowable);
      dismiss();
      return;
    }
  }
  
  protected boolean a()
  {
    return h;
  }
  
  protected void b(String paramString)
  {
    b = paramString;
  }
  
  protected boolean b()
  {
    return j;
  }
  
  protected WebView c()
  {
    return d;
  }
  
  public void cancel()
  {
    if ((c != null) && (!h)) {
      a(new FacebookOperationCanceledException());
    }
  }
  
  public void d()
  {
    Display localDisplay = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    localDisplay.getMetrics(localDisplayMetrics);
    int k;
    if (widthPixels < heightPixels)
    {
      k = widthPixels;
      if (widthPixels >= heightPixels) {
        break label141;
      }
    }
    label141:
    for (int m = heightPixels;; m = widthPixels)
    {
      k = Math.min(a(k, density, 480, 800), widthPixels);
      m = Math.min(a(m, density, 800, 1280), heightPixels);
      getWindow().setLayout(k, m);
      return;
      k = heightPixels;
      break;
    }
  }
  
  public void dismiss()
  {
    if (d != null) {
      d.stopLoading();
    }
    if ((!i) && (e != null) && (e.isShowing())) {
      e.dismiss();
    }
    super.dismiss();
  }
  
  public void onAttachedToWindow()
  {
    i = false;
    super.onAttachedToWindow();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    e = new ProgressDialog(getContext());
    e.requestWindowFeature(1);
    e.setMessage(getContext().getString(o.f.com_facebook_loading));
    e.setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        cancel();
      }
    });
    requestWindowFeature(1);
    g = new FrameLayout(getContext());
    d();
    getWindow().setGravity(17);
    getWindow().setSoftInputMode(16);
    e();
    a(f.getDrawable().getIntrinsicWidth() / 2 + 1);
    g.addView(f, new ViewGroup.LayoutParams(-2, -2));
    setContentView(g);
  }
  
  public void onDetachedFromWindow()
  {
    i = true;
    super.onDetachedFromWindow();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4) {
      cancel();
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onStart()
  {
    super.onStart();
    d();
  }
  
  public static class a
  {
    private Context a;
    private String b;
    private String c;
    private int d = 16973840;
    private w.c e;
    private Bundle f;
    private AccessToken g;
    
    public a(Context paramContext, String paramString, Bundle paramBundle)
    {
      g = AccessToken.a();
      if (g == null)
      {
        String str = u.a(paramContext);
        if (str != null) {
          b = str;
        }
      }
      else
      {
        a(paramContext, paramString, paramBundle);
        return;
      }
      throw new FacebookException("Attempted to create a builder without a valid access token or a valid default Application ID.");
    }
    
    public a(Context paramContext, String paramString1, String paramString2, Bundle paramBundle)
    {
      String str = paramString1;
      if (paramString1 == null) {
        str = u.a(paramContext);
      }
      v.a(str, "applicationId");
      b = str;
      a(paramContext, paramString2, paramBundle);
    }
    
    private void a(Context paramContext, String paramString, Bundle paramBundle)
    {
      a = paramContext;
      c = paramString;
      if (paramBundle != null)
      {
        f = paramBundle;
        return;
      }
      f = new Bundle();
    }
    
    public a a(w.c paramc)
    {
      e = paramc;
      return this;
    }
    
    public w a()
    {
      if (g != null)
      {
        f.putString("app_id", g.h());
        f.putString("access_token", g.b());
      }
      for (;;)
      {
        return new w(a, c, f, d, e);
        f.putString("app_id", b);
      }
    }
    
    public String b()
    {
      return b;
    }
    
    public Context c()
    {
      return a;
    }
    
    public int d()
    {
      return d;
    }
    
    public Bundle e()
    {
      return f;
    }
    
    public w.c f()
    {
      return e;
    }
  }
  
  private class b
    extends WebViewClient
  {
    private b() {}
    
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      super.onPageFinished(paramWebView, paramString);
      if (!w.b(w.this)) {
        w.c(w.this).dismiss();
      }
      w.d(w.this).setBackgroundColor(0);
      w.e(w.this).setVisibility(0);
      w.f(w.this).setVisibility(0);
      w.a(w.this, true);
    }
    
    public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      u.b("FacebookSDK.WebDialog", "Webview loading URL: " + paramString);
      super.onPageStarted(paramWebView, paramString, paramBitmap);
      if (!w.b(w.this)) {
        w.c(w.this).show();
      }
    }
    
    public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
    {
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
      a(new FacebookDialogException(paramString1, paramInt, paramString2));
    }
    
    public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
    {
      super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
      paramSslErrorHandler.cancel();
      a(new FacebookDialogException(null, -11, null));
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      u.b("FacebookSDK.WebDialog", "Redirect URL: " + paramString);
      Bundle localBundle;
      Object localObject;
      if (paramString.startsWith(w.a(w.this)))
      {
        localBundle = a(paramString);
        paramWebView = localBundle.getString("error");
        paramString = paramWebView;
        if (paramWebView == null) {
          paramString = localBundle.getString("error_type");
        }
        localObject = localBundle.getString("error_msg");
        paramWebView = (WebView)localObject;
        if (localObject == null) {
          paramWebView = localBundle.getString("error_message");
        }
        localObject = paramWebView;
        if (paramWebView == null) {
          localObject = localBundle.getString("error_description");
        }
        paramWebView = localBundle.getString("error_code");
        if (u.a(paramWebView)) {
          break label303;
        }
      }
      for (;;)
      {
        try
        {
          i = Integer.parseInt(paramWebView);
          if ((u.a(paramString)) && (u.a((String)localObject)) && (i == -1))
          {
            a(localBundle);
            return true;
          }
        }
        catch (NumberFormatException paramWebView)
        {
          i = -1;
          continue;
          if ((paramString != null) && ((paramString.equals("access_denied")) || (paramString.equals("OAuthAccessDeniedException"))))
          {
            cancel();
            continue;
          }
          if (i == 4201)
          {
            cancel();
            continue;
          }
          paramWebView = new FacebookRequestError(i, paramString, (String)localObject);
          a(new FacebookServiceException(paramWebView, (String)localObject));
          continue;
        }
        if (paramString.startsWith("fbconnect://cancel"))
        {
          cancel();
          return true;
        }
        if (paramString.contains("touch")) {
          return false;
        }
        getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
        return true;
        label303:
        int i = -1;
      }
    }
  }
  
  public static abstract interface c
  {
    public abstract void a(Bundle paramBundle, FacebookException paramFacebookException);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
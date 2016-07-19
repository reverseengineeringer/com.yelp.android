package com.facebook.login.widget;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint.FontMetrics;
import android.os.Bundle;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import com.facebook.AccessToken;
import com.facebook.Profile;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.e;
import com.facebook.g;
import com.facebook.internal.CallbackManagerImpl.RequestCodeOffset;
import com.facebook.internal.LoginAuthorizationType;
import com.facebook.internal.u;
import com.facebook.internal.u.b;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginBehavior;
import com.facebook.o.a;
import com.facebook.o.f;
import com.facebook.o.g;
import com.facebook.o.h;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

public class LoginButton
  extends e
{
  private static final int a = CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
  private static final String b = LoginButton.class.getName();
  private boolean c;
  private String d;
  private String e;
  private a f = new a();
  private String g = "fb_login_view_usage";
  private boolean h;
  private ToolTipPopup.Style i = ToolTipPopup.Style.BLUE;
  private ToolTipMode j;
  private long k = 6000L;
  private ToolTipPopup l;
  private com.facebook.c m;
  private com.facebook.login.c n;
  
  public LoginButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 0, 0, "fb_login_button_create", a);
  }
  
  public LoginButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt, 0, "fb_login_button_create", a);
  }
  
  private void a(u.b paramb)
  {
    if ((paramb != null) && (paramb.c()) && (getVisibility() == 0)) {
      b(paramb.b());
    }
  }
  
  private void b()
  {
    switch (3.a[j.ordinal()])
    {
    default: 
      return;
    case 1: 
      final String str = u.a(getContext());
      g.d().execute(new Runnable()
      {
        public void run()
        {
          final u.b localb = u.a(str, false);
          LoginButton.a(LoginButton.this).runOnUiThread(new Runnable()
          {
            public void run()
            {
              LoginButton.a(LoginButton.this, localb);
            }
          });
        }
      });
      return;
    }
    b(getResources().getString(o.f.com_facebook_tooltip_default));
  }
  
  private void b(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    j = ToolTipMode.DEFAULT;
    paramContext = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, o.h.com_facebook_login_view, paramInt1, paramInt2);
    try
    {
      c = paramContext.getBoolean(o.h.com_facebook_login_view_com_facebook_confirm_logout, true);
      d = paramContext.getString(o.h.com_facebook_login_view_com_facebook_login_text);
      e = paramContext.getString(o.h.com_facebook_login_view_com_facebook_logout_text);
      j = ToolTipMode.fromInt(paramContext.getInt(o.h.com_facebook_login_view_com_facebook_tooltip_mode, ToolTipMode.DEFAULT.getValue()));
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  private void b(String paramString)
  {
    l = new ToolTipPopup(paramString, this);
    l.a(i);
    l.a(k);
    l.a();
  }
  
  private int c(String paramString)
  {
    return a(paramString) + (getCompoundPaddingLeft() + getCompoundDrawablePadding()) + getCompoundPaddingRight();
  }
  
  private void c()
  {
    Resources localResources = getResources();
    if (AccessToken.a() != null)
    {
      if (e != null) {}
      for (localObject = e;; localObject = localResources.getString(o.f.com_facebook_loginview_log_out_button))
      {
        setText((CharSequence)localObject);
        return;
      }
    }
    if (d != null)
    {
      setText(d);
      return;
    }
    String str = localResources.getString(o.f.com_facebook_loginview_log_in_button_long);
    int i1 = getWidth();
    Object localObject = str;
    if (i1 != 0)
    {
      localObject = str;
      if (c(str) > i1) {
        localObject = localResources.getString(o.f.com_facebook_loginview_log_in_button);
      }
    }
    setText((CharSequence)localObject);
  }
  
  public void a()
  {
    if (l != null)
    {
      l.b();
      l = null;
    }
  }
  
  protected void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super.a(paramContext, paramAttributeSet, paramInt1, paramInt2);
    setInternalOnClickListener(new b(null));
    b(paramContext, paramAttributeSet, paramInt1, paramInt2);
    if (isInEditMode())
    {
      setBackgroundColor(getResources().getColor(o.a.com_facebook_blue));
      d = "Log in with Facebook";
    }
    for (;;)
    {
      c();
      return;
      m = new com.facebook.c()
      {
        protected void a(AccessToken paramAnonymousAccessToken1, AccessToken paramAnonymousAccessToken2)
        {
          LoginButton.b(LoginButton.this);
        }
      };
    }
  }
  
  public DefaultAudience getDefaultAudience()
  {
    return f.a();
  }
  
  protected int getDefaultStyleResource()
  {
    return o.g.com_facebook_loginview_default_style;
  }
  
  public LoginBehavior getLoginBehavior()
  {
    return f.c();
  }
  
  com.facebook.login.c getLoginManager()
  {
    if (n == null) {
      n = com.facebook.login.c.a();
    }
    return n;
  }
  
  List<String> getPermissions()
  {
    return f.b();
  }
  
  public long getToolTipDisplayTime()
  {
    return k;
  }
  
  public ToolTipMode getToolTipMode()
  {
    return j;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if ((m != null) && (!m.c()))
    {
      m.a();
      c();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (m != null) {
      m.b();
    }
    a();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((!h) && (!isInEditMode()))
    {
      h = true;
      b();
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    c();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    Object localObject = getPaint().getFontMetrics();
    paramInt2 = getCompoundPaddingTop();
    float f1 = Math.abs(top);
    int i1 = (int)Math.ceil(Math.abs(bottom) + f1);
    int i2 = getCompoundPaddingBottom();
    Resources localResources = getResources();
    String str = d;
    localObject = str;
    if (str == null)
    {
      localObject = localResources.getString(o.f.com_facebook_loginview_log_in_button_long);
      i3 = c((String)localObject);
      if (resolveSize(i3, paramInt1) < i3) {
        localObject = localResources.getString(o.f.com_facebook_loginview_log_in_button);
      }
    }
    int i3 = c((String)localObject);
    str = e;
    localObject = str;
    if (str == null) {
      localObject = localResources.getString(o.f.com_facebook_loginview_log_out_button);
    }
    setMeasuredDimension(resolveSize(Math.max(i3, c((String)localObject)), paramInt1), i2 + (i1 + paramInt2));
  }
  
  protected void onVisibilityChanged(View paramView, int paramInt)
  {
    super.onVisibilityChanged(paramView, paramInt);
    if (paramInt != 0) {
      a();
    }
  }
  
  public void setDefaultAudience(DefaultAudience paramDefaultAudience)
  {
    f.a(paramDefaultAudience);
  }
  
  public void setLoginBehavior(LoginBehavior paramLoginBehavior)
  {
    f.a(paramLoginBehavior);
  }
  
  void setLoginManager(com.facebook.login.c paramc)
  {
    n = paramc;
  }
  
  void setProperties(a parama)
  {
    f = parama;
  }
  
  public void setPublishPermissions(List<String> paramList)
  {
    f.b(paramList);
  }
  
  public void setPublishPermissions(String... paramVarArgs)
  {
    f.b(Arrays.asList(paramVarArgs));
  }
  
  public void setReadPermissions(List<String> paramList)
  {
    f.a(paramList);
  }
  
  public void setReadPermissions(String... paramVarArgs)
  {
    f.a(Arrays.asList(paramVarArgs));
  }
  
  public void setToolTipDisplayTime(long paramLong)
  {
    k = paramLong;
  }
  
  public void setToolTipMode(ToolTipMode paramToolTipMode)
  {
    j = paramToolTipMode;
  }
  
  public void setToolTipStyle(ToolTipPopup.Style paramStyle)
  {
    i = paramStyle;
  }
  
  public static enum ToolTipMode
  {
    AUTOMATIC("automatic", 0),  DISPLAY_ALWAYS("display_always", 1),  NEVER_DISPLAY("never_display", 2);
    
    public static ToolTipMode DEFAULT = AUTOMATIC;
    private int intValue;
    private String stringValue;
    
    private ToolTipMode(String paramString, int paramInt)
    {
      stringValue = paramString;
      intValue = paramInt;
    }
    
    public static ToolTipMode fromInt(int paramInt)
    {
      ToolTipMode[] arrayOfToolTipMode = values();
      int j = arrayOfToolTipMode.length;
      int i = 0;
      while (i < j)
      {
        ToolTipMode localToolTipMode = arrayOfToolTipMode[i];
        if (localToolTipMode.getValue() == paramInt) {
          return localToolTipMode;
        }
        i += 1;
      }
      return null;
    }
    
    public int getValue()
    {
      return intValue;
    }
    
    public String toString()
    {
      return stringValue;
    }
  }
  
  static class a
  {
    private DefaultAudience a = DefaultAudience.FRIENDS;
    private List<String> b = Collections.emptyList();
    private LoginAuthorizationType c = null;
    private LoginBehavior d = LoginBehavior.SSO_WITH_FALLBACK;
    
    public DefaultAudience a()
    {
      return a;
    }
    
    public void a(DefaultAudience paramDefaultAudience)
    {
      a = paramDefaultAudience;
    }
    
    public void a(LoginBehavior paramLoginBehavior)
    {
      d = paramLoginBehavior;
    }
    
    public void a(List<String> paramList)
    {
      if (LoginAuthorizationType.PUBLISH.equals(c)) {
        throw new UnsupportedOperationException("Cannot call setReadPermissions after setPublishPermissions has been called.");
      }
      b = paramList;
      c = LoginAuthorizationType.READ;
    }
    
    List<String> b()
    {
      return b;
    }
    
    public void b(List<String> paramList)
    {
      if (LoginAuthorizationType.READ.equals(c)) {
        throw new UnsupportedOperationException("Cannot call setPublishPermissions after setReadPermissions has been called.");
      }
      if (u.a(paramList)) {
        throw new IllegalArgumentException("Permissions for publish actions cannot be null or empty.");
      }
      b = paramList;
      c = LoginAuthorizationType.PUBLISH;
    }
    
    public LoginBehavior c()
    {
      return d;
    }
  }
  
  private class b
    implements View.OnClickListener
  {
    private b() {}
    
    public void onClick(View paramView)
    {
      Object localObject3 = getContext();
      AccessToken localAccessToken = AccessToken.a();
      Object localObject2;
      Object localObject1;
      if (localAccessToken != null) {
        if (LoginButton.c(LoginButton.this))
        {
          localObject2 = getResources().getString(o.f.com_facebook_loginview_log_out_action);
          String str = getResources().getString(o.f.com_facebook_loginview_cancel_action);
          localObject1 = Profile.a();
          if ((localObject1 != null) && (((Profile)localObject1).c() != null))
          {
            localObject1 = String.format(getResources().getString(o.f.com_facebook_loginview_logged_in_as), new Object[] { ((Profile)localObject1).c() });
            localObject3 = new AlertDialog.Builder((Context)localObject3);
            ((AlertDialog.Builder)localObject3).setMessage((CharSequence)localObject1).setCancelable(true).setPositiveButton((CharSequence)localObject2, new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
              {
                getLoginManager().b();
              }
            }).setNegativeButton(str, null);
            ((AlertDialog.Builder)localObject3).create().show();
            label151:
            localObject1 = AppEventsLogger.a(getContext());
            localObject2 = new Bundle();
            if (localAccessToken == null) {
              break label406;
            }
          }
        }
      }
      label406:
      for (int i = 0;; i = 1)
      {
        ((Bundle)localObject2).putInt("logging_in", i);
        ((AppEventsLogger)localObject1).a(LoginButton.g(LoginButton.this), null, (Bundle)localObject2);
        LoginButton.a(LoginButton.this, paramView);
        return;
        localObject1 = getResources().getString(o.f.com_facebook_loginview_logged_in_using_facebook);
        break;
        getLoginManager().b();
        break label151;
        localObject1 = getLoginManager();
        ((com.facebook.login.c)localObject1).a(getDefaultAudience());
        ((com.facebook.login.c)localObject1).a(getLoginBehavior());
        if (LoginAuthorizationType.PUBLISH.equals(LoginButton.a.a(LoginButton.d(LoginButton.this))))
        {
          if (getFragment() != null)
          {
            ((com.facebook.login.c)localObject1).b(getFragment(), LoginButton.a.b(LoginButton.d(LoginButton.this)));
            break label151;
          }
          ((com.facebook.login.c)localObject1).b(LoginButton.e(LoginButton.this), LoginButton.a.b(LoginButton.d(LoginButton.this)));
          break label151;
        }
        if (getFragment() != null)
        {
          ((com.facebook.login.c)localObject1).a(getFragment(), LoginButton.a.b(LoginButton.d(LoginButton.this)));
          break label151;
        }
        ((com.facebook.login.c)localObject1).a(LoginButton.f(LoginButton.this), LoginButton.a.b(LoginButton.d(LoginButton.this)));
        break label151;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.widget.LoginButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
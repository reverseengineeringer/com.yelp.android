package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.os.Message;
import android.view.View;
import android.view.WindowManager.BadTokenException;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebView;
import android.webkit.WebView.WebViewTransport;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

@ey
public class gw
  extends WebChromeClient
{
  private final gu mo;
  
  public gw(gu paramgu)
  {
    mo = paramgu;
  }
  
  private static void a(AlertDialog.Builder paramBuilder, String paramString, JsResult paramJsResult)
  {
    paramBuilder.setMessage(paramString).setPositiveButton(17039370, new gw.3(paramJsResult)).setNegativeButton(17039360, new gw.2(paramJsResult)).setOnCancelListener(new gw.1(paramJsResult)).create().show();
  }
  
  private static void a(Context paramContext, AlertDialog.Builder paramBuilder, String paramString1, String paramString2, JsPromptResult paramJsPromptResult)
  {
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    localLinearLayout.setOrientation(1);
    TextView localTextView = new TextView(paramContext);
    localTextView.setText(paramString1);
    paramContext = new EditText(paramContext);
    paramContext.setText(paramString2);
    localLinearLayout.addView(localTextView);
    localLinearLayout.addView(paramContext);
    paramBuilder.setView(localLinearLayout).setPositiveButton(17039370, new gw.6(paramJsPromptResult, paramContext)).setNegativeButton(17039360, new gw.5(paramJsPromptResult)).setOnCancelListener(new gw.4(paramJsPromptResult)).create().show();
  }
  
  private final Context c(WebView paramWebView)
  {
    if (!(paramWebView instanceof gu)) {
      paramWebView = paramWebView.getContext();
    }
    gu localgu;
    Context localContext;
    do
    {
      return paramWebView;
      localgu = (gu)paramWebView;
      localContext = localgu.dI();
      paramWebView = localContext;
    } while (localContext != null);
    return localgu.getContext();
  }
  
  protected final void a(View paramView, int paramInt, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    dp localdp = mo.dC();
    if (localdp == null)
    {
      gr.W("Could not get ad overlay when showing custom view.");
      paramCustomViewCallback.onCustomViewHidden();
      return;
    }
    localdp.a(paramView, paramCustomViewCallback);
    localdp.setRequestedOrientation(paramInt);
  }
  
  protected boolean a(Context paramContext, String paramString1, String paramString2, String paramString3, JsResult paramJsResult, JsPromptResult paramJsPromptResult, boolean paramBoolean)
  {
    try
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
      localBuilder.setTitle(paramString1);
      if (paramBoolean) {
        a(paramContext, localBuilder, paramString2, paramString3, paramJsPromptResult);
      } else {
        a(localBuilder, paramString2, paramJsResult);
      }
    }
    catch (WindowManager.BadTokenException paramContext)
    {
      gr.d("Fail to display Dialog.", paramContext);
    }
    return true;
  }
  
  public final void onCloseWindow(WebView paramWebView)
  {
    if (!(paramWebView instanceof gu))
    {
      gr.W("Tried to close a WebView that wasn't an AdWebView.");
      return;
    }
    paramWebView = ((gu)paramWebView).dC();
    if (paramWebView == null)
    {
      gr.W("Tried to close an AdWebView not associated with an overlay.");
      return;
    }
    paramWebView.close();
  }
  
  public final boolean onConsoleMessage(ConsoleMessage paramConsoleMessage)
  {
    String str = "JS: " + paramConsoleMessage.message() + " (" + paramConsoleMessage.sourceId() + ":" + paramConsoleMessage.lineNumber() + ")";
    if (str.contains("Application Cache")) {
      return super.onConsoleMessage(paramConsoleMessage);
    }
    switch (gw.7.xq[paramConsoleMessage.messageLevel().ordinal()])
    {
    default: 
      gr.U(str);
    }
    for (;;)
    {
      return super.onConsoleMessage(paramConsoleMessage);
      gr.T(str);
      continue;
      gr.W(str);
      continue;
      gr.U(str);
      continue;
      gr.S(str);
    }
  }
  
  public final boolean onCreateWindow(WebView paramWebView, boolean paramBoolean1, boolean paramBoolean2, Message paramMessage)
  {
    WebView.WebViewTransport localWebViewTransport = (WebView.WebViewTransport)obj;
    paramWebView = new WebView(paramWebView.getContext());
    paramWebView.setWebViewClient(mo.dD());
    localWebViewTransport.setWebView(paramWebView);
    paramMessage.sendToTarget();
    return true;
  }
  
  public final void onExceededDatabaseQuota(String paramString1, String paramString2, long paramLong1, long paramLong2, long paramLong3, WebStorage.QuotaUpdater paramQuotaUpdater)
  {
    long l = 5242880L - paramLong3;
    if (l <= 0L)
    {
      paramQuotaUpdater.updateQuota(paramLong1);
      return;
    }
    if (paramLong1 == 0L) {
      if ((paramLong2 > l) || (paramLong2 > 1048576L)) {}
    }
    for (;;)
    {
      paramQuotaUpdater.updateQuota(paramLong2);
      return;
      paramLong2 = 0L;
      continue;
      if (paramLong2 == 0L)
      {
        paramLong2 = Math.min(Math.min(131072L, l) + paramLong1, 1048576L);
      }
      else
      {
        paramLong3 = paramLong1;
        if (paramLong2 <= Math.min(1048576L - paramLong1, l)) {
          paramLong3 = paramLong1 + paramLong2;
        }
        paramLong2 = paramLong3;
      }
    }
  }
  
  public final void onHideCustomView()
  {
    dp localdp = mo.dC();
    if (localdp == null)
    {
      gr.W("Could not get ad overlay when hiding custom view.");
      return;
    }
    localdp.cf();
  }
  
  public final boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return a(c(paramWebView), paramString1, paramString2, null, paramJsResult, null, false);
  }
  
  public final boolean onJsBeforeUnload(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return a(c(paramWebView), paramString1, paramString2, null, paramJsResult, null, false);
  }
  
  public final boolean onJsConfirm(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return a(c(paramWebView), paramString1, paramString2, null, paramJsResult, null, false);
  }
  
  public final boolean onJsPrompt(WebView paramWebView, String paramString1, String paramString2, String paramString3, JsPromptResult paramJsPromptResult)
  {
    return a(c(paramWebView), paramString1, paramString2, paramString3, null, paramJsPromptResult, true);
  }
  
  public final void onReachedMaxAppCacheSize(long paramLong1, long paramLong2, WebStorage.QuotaUpdater paramQuotaUpdater)
  {
    paramLong1 = 131072L + paramLong1;
    if (5242880L - paramLong2 < paramLong1)
    {
      paramQuotaUpdater.updateQuota(0L);
      return;
    }
    paramQuotaUpdater.updateQuota(paramLong1);
  }
  
  public final void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    a(paramView, -1, paramCustomViewCallback);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
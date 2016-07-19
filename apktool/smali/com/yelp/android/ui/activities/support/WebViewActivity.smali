.class public Lcom/yelp/android/ui/activities/support/WebViewActivity;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/support/WebViewActivity$ForceDirtySessionCallback;,
        Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;,
        Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;,
        Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;
    }
.end annotation


# static fields
.field public static final EXTRA_BUSINESS_NAME:Ljava/lang/String; = "extra.business_name"

.field public static final EXTRA_WEBVIEW_DONE:Ljava/lang/String; = "com.yelp.android.webview_done"

.field public static final EXTRA_WEBVIEW_HAS_DETAILS:Ljava/lang/String; = "com.yelp.android.webview_has_details"

.field public static final EXTRA_WEBVIEW_SUBTITLE:Ljava/lang/String; = "com.yelp.android.webview_subtitle"

.field public static final EXTRA_WEBVIEW_TITLE:Ljava/lang/String; = "com.yelp.android.webview_title"

.field private static final JAVASCRIPT_EVENT_INTERFACE:Ljava/lang/String; = "androidWebview"

.field private static final KEY_ADD_WEBVIEW_ID:Ljava/lang/String; = "key.add_webview_id"

.field private static final KEY_BACK_BEHAVIOR:Ljava/lang/String; = "key.back_behavior"

.field private static final KEY_CONFIRM:Ljava/lang/String; = "key.confirm"

.field private static final KEY_FEATURES:Ljava/lang/String; = "key.features"

.field public static final KEY_IRI:Ljava/lang/String; = "iri"

.field private static final KEY_TITLE:Ljava/lang/String; = "key.title"

.field public static final KEY_URI:Ljava/lang/String; = "key.uri"

.field private static final LEAST_SIG_BITS:Ljava/lang/String; = "least"

.field private static final MOST_SIG_BITS:Ljava/lang/String; = "most"

.field private static final REDIRECT_URL:Ljava/lang/String; = "redirect_url"

.field private static final WEBVIEW_ID:Ljava/lang/String; = "webview_id"

.field public static final WEBVIEW_LOG_TAG:Ljava/lang/String; = "WEBVIEW"

.field private static mDomains:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackBehavior:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

.field private mFeatures:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private final mJavascriptEventCallback:Lcom/yelp/android/ui/activities/support/JavaScriptEventInterface$b;

.field private mOriginalUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewId:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 692
    new-instance v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;-><init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mJavascriptEventCallback:Lcom/yelp/android/ui/activities/support/JavaScriptEventInterface$b;

    .line 869
    return-void
.end method

.method static synthetic access$000(Lcom/yelp/android/ui/activities/support/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->toastIfDebug(Ljava/lang/String;)V

    return-void
.end method

.method private clearWebViewCookies()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 535
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 536
    const/16 v1, 0x15

    invoke-static {v1}, Lcom/yelp/android/appdata/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 538
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 548
    :goto_0
    return-void

    .line 540
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v1

    .line 542
    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 543
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 544
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 545
    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 546
    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_0
.end method

.method private closeWebSession()V
    .locals 3

    .prologue
    .line 381
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/yelp/android/services/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 387
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 388
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    invoke-static {v0}, Lcom/yelp/android/util/g;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 395
    const-string/jumbo v1, "ss"

    invoke-static {v1}, Lcom/yelp/android/services/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/g;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    const-string/jumbo v2, "s"

    invoke-static {v2}, Lcom/yelp/android/services/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yelp/android/util/g;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 399
    new-instance v2, Lcom/yelp/android/appdata/webrequests/cr;

    invoke-direct {v2, v1, v0}, Lcom/yelp/android/appdata/webrequests/cr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/yelp/android/appdata/webrequests/cr;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 406
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->clearWebViewCookies()V

    .line 407
    return-void
.end method

.method protected static configureIntent(Landroid/content/Intent;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/analytics/iris/ViewIri;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;",
            ">;",
            "Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 189
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->configureIntent(Landroid/content/Intent;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected static configureIntent(Landroid/content/Intent;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;I)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/analytics/iris/ViewIri;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;",
            ">;",
            "Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 218
    const-string/jumbo v0, "iri"

    invoke-virtual {p4}, Lcom/yelp/android/analytics/iris/ViewIri;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string/jumbo v0, "key.title"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string/jumbo v0, "key.uri"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 221
    const-string/jumbo v0, "key.confirm"

    invoke-virtual {p0, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string/jumbo v0, "key.features"

    invoke-static {p5}, Lcom/yelp/android/util/d;->a(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 223
    const-string/jumbo v0, "key.back_behavior"

    invoke-static {p0, v0, p6}, Lcom/yelp/android/util/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 224
    sget-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->LOGIN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-virtual {p5, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    .line 227
    :cond_0
    return-object p0
.end method

.method protected static configureIntent(Landroid/content/Intent;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/analytics/iris/ViewIri;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;",
            ">;",
            "Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p8}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const-string/jumbo v0, "extra.business_name"

    invoke-virtual {p0, v0, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->configureIntent(Landroid/content/Intent;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private confirmAndFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 582
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mBackBehavior:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mBackBehavior:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mBackBehavior:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->RESET_OR_FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mBackBehavior:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->RESET_OR_FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    if-eq v0, v1, :cond_0

    .line 586
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You need to have FINISH_ON_BACK, FINISH_ON_UP, RESET_OR_FINISH_ON_UP or RESET_OR_FINISH_ON_BACK turned on for this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key.confirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 591
    if-nez v0, :cond_1

    .line 592
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendCancelIrisIfNeeded(Z)V

    .line 593
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntentForLeavingWebView()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 594
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    .line 620
    :goto_0
    return-void

    .line 597
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 598
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705a4

    new-instance v2, Lcom/yelp/android/ui/activities/support/WebViewActivity$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity$2;-><init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07036d

    new-instance v2, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;-><init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private confirmAndMaybeFinish()V
    .locals 3

    .prologue
    .line 658
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mBackBehavior:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->RESET_OR_FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mBackBehavior:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->RESET_OR_FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    if-eq v0, v1, :cond_0

    .line 660
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You need to have RESET_OR_FINISH_ON_BACK or RESET_OR_FINISH_ON_UP turned on for this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getUrlParams()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->createUrlWithParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendCancelIrisIfNeeded(Z)V

    .line 667
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntentForLeavingWebView()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 668
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    .line 672
    :goto_0
    return-void

    .line 670
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->confirmAndFinish()V

    goto :goto_0
.end method

.method private createUrlWithParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 675
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 676
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 677
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 678
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 679
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 681
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 683
    :cond_1
    return-object p1
.end method

.method public static getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;)Landroid/content/Intent;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/analytics/iris/ViewIri;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;",
            ">;",
            "Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 165
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;I)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/analytics/iris/ViewIri;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;",
            ">;",
            "Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 177
    invoke-static/range {v0 .. v7}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->configureIntent(Landroid/content/Intent;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;Z)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/analytics/iris/ViewIri;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;",
            ">;",
            "Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 153
    invoke-static/range {p0 .. p5}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;)Landroid/content/Intent;

    move-result-object v0

    .line 154
    const-string/jumbo v1, "key.add_webview_id"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    return-object v0
.end method

.method private goBackOrMaybeFinish()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 631
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mBackBehavior:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->RESET_OR_FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    if-eq v0, v1, :cond_0

    .line 632
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You need to have RESET_OR_FINISH_ON_UP turned on for this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getUrlParams()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->createUrlWithParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendCancelIrisIfNeeded(Z)V

    .line 637
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntentForLeavingWebView()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 638
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    .line 647
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 643
    :cond_2
    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendCancelIrisIfNeeded(Z)V

    .line 644
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntentForLeavingWebView()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 645
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    goto :goto_0
.end method

.method private static initializeDomains(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 231
    sget-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mDomains:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mDomains:Ljava/util/ArrayList;

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 234
    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mDomains:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method

.method private loadUrlForLoggedInUser(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 551
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->createUrlWithParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-static {}, Lcom/yelp/android/services/c;->b()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v1

    .line 554
    const-string/jumbo v2, "api_ss"

    invoke-static {v2}, Lcom/yelp/android/services/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/util/g;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 557
    const-string/jumbo v3, "user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string/jumbo v3, "&session_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :try_start_0
    const-string/jumbo v1, "&return_url="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :goto_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "webview_login"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/yelp/android/services/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 573
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 574
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 562
    const-string/jumbo v1, "WEBVIEW"

    const-string/jumbo v3, "%s\n%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v1, v3, v4}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendCancelIrisIfNeeded(Z)V

    .line 564
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    goto :goto_0
.end method

.method private toastIfDebug(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 457
    return-void
.end method


# virtual methods
.method protected getContentViewResourceId()I
    .locals 1

    .prologue
    .line 483
    const v0, 0x7f030059

    return v0
.end method

.method protected getIntentForLeavingWebView()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 518
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "iri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/analytics/iris/ViewIri;->valueOf(Ljava/lang/String;)Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalizedDomains()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    sget-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mDomains:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 449
    const-string/jumbo v1, "webview_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebViewId:Ljava/util/UUID;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    return-object v0
.end method

.method protected getUrlParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method protected getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 509
    new-instance v0, Lcom/yelp/android/ui/activities/support/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/support/c;-><init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 373
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 374
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x418

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    .line 375
    const-string/jumbo v0, "redirect_url"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->loadUrlForLoggedInUser(Ljava/lang/String;Ljava/util/Map;)V

    .line 377
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "InlinedApi",
            "AddJavascriptInterface"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 253
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 254
    invoke-static {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->initializeDomains(Landroid/content/Context;)V

    .line 255
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "key.title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "key.features"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->values()[Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yelp/android/util/d;->a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mFeatures:Ljava/util/Collection;

    .line 259
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "key.back_behavior"

    const-class v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    invoke-static {v0, v3, v4}, Lcom/yelp/android/util/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mBackBehavior:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    .line 260
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getContentViewResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->setContentView(I)V

    .line 261
    const v0, 0x7f0f01a3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/d;->a(Landroid/webkit/WebView;)V

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mFeatures:Ljava/util/Collection;

    sget-object v3, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->FULL_SCREEN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "databases"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v3, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/f;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/yelp/android/appdata/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 296
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "key.uri"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 298
    iget-object v3, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mFeatures:Ljava/util/Collection;

    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    iget-object v3, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mJavascriptEventCallback:Lcom/yelp/android/ui/activities/support/JavaScriptEventInterface$b;

    const-string/jumbo v5, "androidWebview"

    invoke-static {v3, v4, v5, v0}, Lcom/yelp/android/cf/a;->a(Landroid/webkit/WebView;Lcom/yelp/android/ui/activities/support/JavaScriptEventInterface$b;Ljava/lang/String;Landroid/net/Uri;)Z

    .line 304
    :cond_1
    new-instance v3, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;-><init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V

    .line 305
    iget-object v4, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mFeatures:Ljava/util/Collection;

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v3, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->setVirtualDisableLoadingByTitle(Z)V

    .line 306
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mFeatures:Ljava/util/Collection;

    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->FULL_SCREEN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 307
    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->freezeTitle()V

    .line 309
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 311
    if-eqz p1, :cond_4

    .line 312
    const-string/jumbo v1, "most"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 313
    const-string/jumbo v1, "least"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 314
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebViewId:Ljava/util/UUID;

    .line 319
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "key.add_webview_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 321
    if-eqz v1, :cond_5

    .line 322
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "webview_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebViewId:Ljava/util/UUID;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 331
    :goto_1
    iput-object v2, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mOriginalUrl:Ljava/lang/String;

    .line 332
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getUrlParams()Ljava/util/Map;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->shouldLoginToWebView()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 334
    invoke-direct {p0, v2, v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->loadUrlForLoggedInUser(Ljava/lang/String;Ljava/util/Map;)V

    .line 347
    :goto_2
    return-void

    .line 316
    :cond_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebViewId:Ljava/util/UUID;

    goto :goto_0

    .line 329
    :cond_5
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 335
    :cond_6
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 337
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 338
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 339
    const-string/jumbo v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 343
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_2

    .line 345
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 363
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 364
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->closeWebSession()V

    .line 369
    :cond_0
    return-void
.end method

.method protected onIframeReady()V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 418
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 419
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mBackBehavior:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    sget-object v2, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->RESET_OR_FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    if-ne v1, v2, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->confirmAndMaybeFinish()V

    .line 437
    :goto_0
    return v0

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mBackBehavior:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    sget-object v2, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->RESET_OR_FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    if-ne v1, v2, :cond_1

    .line 423
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->goBackOrMaybeFinish()V

    goto :goto_0

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mBackBehavior:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    sget-object v2, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    if-ne v1, v2, :cond_2

    .line 426
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->confirmAndFinish()V

    goto :goto_0

    .line 428
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 429
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 431
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mBackBehavior:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    sget-object v2, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    if-ne v1, v2, :cond_4

    .line 433
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->confirmAndFinish()V

    goto :goto_0

    .line 437
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onOpportunityReady()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 461
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_4

    .line 462
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mBackBehavior:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    sget-object v2, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->RESET_OR_FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mBackBehavior:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    sget-object v2, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->RESET_OR_FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    if-ne v1, v2, :cond_1

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->confirmAndMaybeFinish()V

    .line 475
    :goto_0
    return v0

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mBackBehavior:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    sget-object v2, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mBackBehavior:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    sget-object v2, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    if-ne v1, v2, :cond_3

    .line 468
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->confirmAndFinish()V

    goto :goto_0

    .line 470
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 471
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 475
    :cond_4
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPageFinished()V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 359
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 352
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 353
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 411
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 412
    const-string/jumbo v0, "most"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebViewId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 413
    const-string/jumbo v0, "least"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebViewId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 414
    return-void
.end method

.method protected sendCancelIrisIfNeeded(Z)V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method protected sendConfirmedIrisIfNeeded()V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method protected shouldLoginToWebView()Z
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mFeatures:Ljava/util/Collection;

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->LOGIN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.class public Lcom/yelp/android/ui/activities/support/WebViewActivity;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "WebViewActivity.java"


# static fields
.field public static final EXTRA_WEBVIEW_DONE:Ljava/lang/String; = "com.yelp.android.webview_done"

.field public static final EXTRA_WEBVIEW_HAS_DETAILS:Ljava/lang/String; = "com.yelp.android.webview_has_details"

.field public static final EXTRA_WEBVIEW_SUBTITLE:Ljava/lang/String; = "com.yelp.android.webview_subtitle"

.field public static final EXTRA_WEBVIEW_TITLE:Ljava/lang/String; = "com.yelp.android.webview_title"

.field private static final JAVASCRIPT_EVENT_INTERFACE:Ljava/lang/String; = "androidWebview"

.field private static final KEY_ADD_WEBVIEW_ID:Ljava/lang/String; = "key.add_webview_id"

.field private static final KEY_BIZ_DIMENSION:Ljava/lang/String; = "key.biz_dimension"

.field private static final KEY_CONFIRM:Ljava/lang/String; = "key.confirm"

.field private static final KEY_FEATURES:Ljava/lang/String; = "key.features"

.field private static final KEY_IRI:Ljava/lang/String; = "key.iri"

.field private static final KEY_IS_PLATFORM_FLOW:Ljava/lang/String; = "key.is_platform_flow"

.field private static final KEY_SOURCE:Ljava/lang/String; = "key.source"

.field private static final KEY_TITLE:Ljava/lang/String; = "key.title"

.field private static final KEY_URI:Ljava/lang/String; = "key.uri"

.field private static final LEAST_SIG_BITS:Ljava/lang/String; = "least"

.field private static final MOST_SIG_BITS:Ljava/lang/String; = "most"

.field private static final REDIRECT_URL:Ljava/lang/String; = "redirect_url"

.field public static final SOURCE_BUSINESS_PAGE:Ljava/lang/String; = "source_business_page"

.field public static final SOURCE_SEARCH_PAGE:Ljava/lang/String; = "source_search_page"

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
.field private lock:Ljava/lang/Object;

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

.field private mHaveSentPlatformTiming:Z

.field private final mJavascriptEventCallback:Lcom/yelp/android/ui/activities/support/b;

.field private mLoadingScreenShowing:Z

.field private mStartTimeMilliseconds:J

.field private mTimesLoadingScreenShown:I

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewId:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mLoadingScreenShowing:Z

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->lock:Ljava/lang/Object;

    .line 654
    new-instance v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;-><init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mJavascriptEventCallback:Lcom/yelp/android/ui/activities/support/b;

    .line 795
    return-void
.end method

.method static synthetic access$000(Lcom/yelp/android/ui/activities/support/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->toastIfDebug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/yelp/android/ui/activities/support/WebViewActivity;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mHaveSentPlatformTiming:Z

    return v0
.end method

.method static synthetic access$102(Lcom/yelp/android/ui/activities/support/WebViewActivity;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mHaveSentPlatformTiming:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yelp/android/ui/activities/support/WebViewActivity;)J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mStartTimeMilliseconds:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/yelp/android/ui/activities/support/WebViewActivity;Z)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendPlatformCancelIrisIfNeeded(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendPlatformConfirmedIrisIfNeeded()V

    return-void
.end method

.method private closeWebSession()V
    .locals 3

    .prologue
    .line 394
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/yelp/android/services/x;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 399
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 400
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 406
    invoke-static {v0}, Lcom/yelp/android/util/m;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 407
    const-string/jumbo v1, "ss"

    invoke-static {v1}, Lcom/yelp/android/services/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/m;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    const-string/jumbo v2, "s"

    invoke-static {v2}, Lcom/yelp/android/services/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yelp/android/util/m;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 411
    new-instance v2, Lcom/yelp/android/appdata/webrequests/dl;

    invoke-direct {v2, v1, v0}, Lcom/yelp/android/appdata/webrequests/dl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/yelp/android/appdata/webrequests/dl;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 416
    :cond_0
    return-void
.end method

.method private confirmAndFinish()V
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mFeatures:Ljava/util/Collection;

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You need to have FINISH_ON_BACK turned on for this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key.confirm"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 546
    if-nez v0, :cond_1

    .line 547
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendPlatformCancelIrisIfNeeded(Z)V

    .line 548
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    .line 569
    :goto_0
    return-void

    .line 551
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 552
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070594

    new-instance v2, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;-><init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070336

    new-instance v2, Lcom/yelp/android/ui/activities/support/WebViewActivity$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity$2;-><init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;)Landroid/content/Intent;
    .locals 6
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
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 145
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;I)Landroid/content/Intent;
    .locals 3
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
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    const-string/jumbo v1, "key.iri"

    invoke-virtual {p3}, Lcom/yelp/android/analytics/iris/ViewIri;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string/jumbo v1, "key.title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string/jumbo v1, "key.uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 168
    const-string/jumbo v1, "key.confirm"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    const-string/jumbo v1, "key.features"

    invoke-static {p4}, Lcom/yelp/android/util/f;->a(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 170
    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->LOGIN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-virtual {p4, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 173
    :cond_0
    return-object v0
.end method

.method public static getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;IZLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
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
            ">;IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-static/range {p0 .. p5}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;I)Landroid/content/Intent;

    move-result-object v0

    .line 152
    const-string/jumbo v1, "key.is_platform_flow"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    invoke-static {p7}, Lcom/yelp/android/util/StringUtils;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    const-string/jumbo v1, "key.biz_dimension"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    :cond_0
    invoke-static {p8}, Lcom/yelp/android/util/StringUtils;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    const-string/jumbo v1, "key.source"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    :cond_1
    return-object v0
.end method

.method public static getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Z)Landroid/content/Intent;
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
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;)Landroid/content/Intent;

    move-result-object v0

    .line 139
    const-string/jumbo v1, "key.add_webview_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    return-object v0
.end method

.method private static initializeDomains(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 185
    sget-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mDomains:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mDomains:Ljava/util/ArrayList;

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 188
    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mDomains:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method public static isEventsFeatureSupported()Z
    .locals 1

    .prologue
    .line 181
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    return v0
.end method

.method private loadUrlForLoggedInUser(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 510
    invoke-static {}, Lcom/yelp/android/services/d;->b()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    .line 512
    const-string/jumbo v1, "api_ss"

    invoke-static {v1}, Lcom/yelp/android/services/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/m;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 515
    const-string/jumbo v2, "user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string/jumbo v2, "&session_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :try_start_0
    const-string/jumbo v0, "&return_url="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v2, "webview_login"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "https"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/yelp/android/services/x;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 530
    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 531
    return-void

    .line 519
    :catch_0
    move-exception v0

    .line 520
    const-string/jumbo v2, "WEBVIEW"

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

    invoke-static {v2, v3, v4}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    invoke-direct {p0, v7}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendPlatformCancelIrisIfNeeded(Z)V

    .line 522
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    goto :goto_0
.end method

.method private makeMoreSecure()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 420
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 421
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 422
    return-void
.end method

.method private sendPlatformCancelIrisIfNeeded(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 608
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 609
    if-eqz p1, :cond_0

    .line 610
    const-string/jumbo v1, "cancel_state"

    const-string/jumbo v2, "error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    :goto_0
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPlatformCancel:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->SearchPlatformCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendPlatformIrisIfNeeded(Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V

    .line 624
    return-void

    .line 612
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 613
    :try_start_0
    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mLoadingScreenShowing:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mTimesLoadingScreenShown:I

    if-ne v2, v3, :cond_1

    .line 614
    const-string/jumbo v2, "cancel_state"

    const-string/jumbo v3, "loading_initial"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 615
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mLoadingScreenShowing:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mTimesLoadingScreenShown:I

    if-le v2, v3, :cond_2

    .line 616
    const-string/jumbo v2, "cancel_state"

    const-string/jumbo v3, "loading"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 618
    :cond_2
    const-string/jumbo v2, "cancel_state"

    const-string/jumbo v3, "loaded"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private sendPlatformConfirmedIrisIfNeeded()V
    .locals 3

    .prologue
    .line 627
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPlatformConfirmed:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchPlatformConfirmed:Lcom/yelp/android/analytics/iris/EventIri;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendPlatformIrisIfNeeded(Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V

    .line 629
    return-void
.end method

.method private sendPlatformIrisIfNeeded(Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key.biz_dimension"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "key.source"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 638
    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 640
    const-string/jumbo v2, "biz_dimension"

    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string/jumbo v0, "source_business_page"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    invoke-static {p1, p3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    const-string/jumbo v0, "source_search_page"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    invoke-static {p2, p3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private supportOnPause()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 591
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string/jumbo v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 598
    if-eqz v0, :cond_0

    .line 599
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private supportOnResume()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 573
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string/jumbo v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 580
    if-eqz v0, :cond_0

    .line 581
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private toastIfDebug(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 476
    return-void
.end method


# virtual methods
.method public disableLoading()V
    .locals 2

    .prologue
    .line 494
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 495
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mLoadingScreenShowing:Z

    .line 496
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->disableLoading()V

    .line 498
    return-void

    .line 496
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public enableLoading()V
    .locals 2

    .prologue
    .line 502
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 503
    :try_start_0
    iget v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mTimesLoadingScreenShown:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mTimesLoadingScreenShown:I

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mLoadingScreenShowing:Z

    .line 505
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->enableLoading()V

    .line 507
    return-void

    .line 505
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 2

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key.iri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/analytics/iris/ViewIri;->valueOf(Ljava/lang/String;)Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 468
    const-string/jumbo v1, "webview_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebViewId:Ljava/util/UUID;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 386
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 387
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x413

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    .line 388
    const-string/jumbo v0, "redirect_url"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->loadUrlForLoggedInUser(Ljava/lang/String;)V

    .line 390
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

    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 203
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 204
    invoke-static {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->initializeDomains(Landroid/content/Context;)V

    .line 205
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "key.title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "key.features"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->values()[Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yelp/android/util/f;->a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mFeatures:Ljava/util/Collection;

    .line 209
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->setContentView(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mFeatures:Ljava/util/Collection;

    sget-object v3, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->FULL_SCREEN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 223
    :cond_0
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 228
    invoke-static {v4}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->makeMoreSecure()V

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v4, :cond_2

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "databases"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v3, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 253
    iget-object v3, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/yelp/android/appdata/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;-><init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 316
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mFeatures:Ljava/util/Collection;

    sget-object v3, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    invoke-static {}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->isEventsFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 318
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/yelp/android/ui/activities/support/JavaScriptEventInterface;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v5, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mJavascriptEventCallback:Lcom/yelp/android/ui/activities/support/b;

    invoke-direct {v3, v4, v5}, Lcom/yelp/android/ui/activities/support/JavaScriptEventInterface;-><init>(Landroid/os/Handler;Lcom/yelp/android/ui/activities/support/b;)V

    const-string/jumbo v4, "androidWebview"

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    :cond_3
    :goto_0
    new-instance v3, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;-><init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V

    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mFeatures:Ljava/util/Collection;

    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->setVirtualDisableLoadingByTitle(Z)V

    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mFeatures:Ljava/util/Collection;

    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->FULL_SCREEN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 331
    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->freezeTitle()V

    .line 333
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 335
    if-eqz p1, :cond_8

    .line 336
    const-string/jumbo v0, "most"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 337
    const-string/jumbo v0, "least"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 338
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebViewId:Ljava/util/UUID;

    .line 343
    :goto_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "key.uri"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 344
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "key.add_webview_id"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 346
    if-eqz v1, :cond_9

    .line 347
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "webview_id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebViewId:Ljava/util/UUID;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "key.is_platform_flow"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 353
    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mFeatures:Ljava/util/Collection;

    sget-object v3, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->LOGIN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 355
    :cond_5
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->loadUrlForLoggedInUser(Ljava/lang/String;)V

    .line 359
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mStartTimeMilliseconds:J

    .line 360
    return-void

    .line 321
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "WebViewActivity is requesting Javascript events on an unsupported device."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    .line 323
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendPlatformCancelIrisIfNeeded(Z)V

    .line 324
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 329
    goto/16 :goto_1

    .line 340
    :cond_8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebViewId:Ljava/util/UUID;

    goto :goto_2

    .line 350
    :cond_9
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 357
    :cond_a
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 376
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 377
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->closeWebSession()V

    .line 382
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 448
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mFeatures:Ljava/util/Collection;

    sget-object v2, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->confirmAndFinish()V

    .line 457
    :goto_0
    return v0

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 457
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 480
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 481
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mFeatures:Ljava/util/Collection;

    sget-object v2, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->confirmAndFinish()V

    .line 489
    :goto_0
    return v0

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 489
    :cond_1
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 370
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 371
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->supportOnPause()V

    .line 372
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 364
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 365
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->supportOnResume()V

    .line 366
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 426
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 427
    const-string/jumbo v0, "most"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebViewId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 428
    const-string/jumbo v0, "least"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mWebViewId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 429
    return-void
.end method

.method protected shouldOverrideDomain(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 432
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 433
    const-string/jumbo v0, "http"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    .line 434
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_1
    move v0, v2

    .line 443
    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 433
    goto :goto_0

    .line 437
    :cond_3
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 438
    sget-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity;->mDomains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 439
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 440
    goto :goto_1

    :cond_5
    move v0, v2

    .line 443
    goto :goto_1
.end method

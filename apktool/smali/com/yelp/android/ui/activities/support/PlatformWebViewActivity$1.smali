.class Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity$1;
.super Lcom/yelp/android/ui/activities/support/c;
.source "PlatformWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->getWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;Lcom/yelp/android/ui/activities/support/WebViewActivity;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity$1;->a:Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;

    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/support/c;-><init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V

    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 7

    .prologue
    .line 330
    iget-object v6, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity$1;->a:Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity$1;->a:Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity$1;->a:Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;

    const v2, 0x7f070379

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->OpenURL:Lcom/yelp/android/analytics/iris/ViewIri;

    const-class v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->NONE:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 338
    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 308
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 311
    iget-object v3, p0, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity$1;->a:Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;

    const-string/jumbo v4, "order/menu"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->a(Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;I)Z

    .line 314
    const-string/jumbo v3, "tos/privacy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity$1;->a(Landroid/net/Uri;)V

    .line 326
    :goto_0
    return v0

    .line 320
    :cond_0
    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    if-eqz v2, :cond_1

    const-string/jumbo v3, "tos"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity$1;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 326
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/c;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

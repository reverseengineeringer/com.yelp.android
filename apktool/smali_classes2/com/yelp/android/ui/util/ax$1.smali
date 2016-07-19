.class Lcom/yelp/android/ui/util/ax$1;
.super Ljava/lang/Object;
.source "YelpPrivacyPolicyDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/util/ax;->b()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/ax;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/ax;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yelp/android/ui/util/ax$1;->a:Lcom/yelp/android/ui/util/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax$1;->a:Lcom/yelp/android/ui/util/ax;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ax;->a(Lcom/yelp/android/ui/util/ax;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0704b7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax$1;->a:Lcom/yelp/android/ui/util/ax;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ax;->a(Lcom/yelp/android/ui/util/ax;)Landroid/app/Activity;

    move-result-object v7

    iget-object v0, p0, Lcom/yelp/android/ui/util/ax$1;->a:Lcom/yelp/android/ui/util/ax;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ax;->a(Lcom/yelp/android/ui/util/ax;)Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/util/ax$1;->a:Lcom/yelp/android/ui/util/ax;

    invoke-static {v2}, Lcom/yelp/android/ui/util/ax;->a(Lcom/yelp/android/ui/util/ax;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0704b3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->Business:Lcom/yelp/android/analytics/iris/ViewIri;

    const-class v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->NONE:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax$1;->a:Lcom/yelp/android/ui/util/ax;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ax;->b(Lcom/yelp/android/ui/util/ax;)Lcom/yelp/android/appdata/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->g(Z)V

    .line 80
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->PrivacyPolicyLearnMore:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 83
    return-void
.end method

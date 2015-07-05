.class Lcom/yelp/android/ui/util/dh;
.super Ljava/lang/Object;
.source "YelpPrivacyPolicyDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/dg;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/dg;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/util/dh;->a:Lcom/yelp/android/ui/util/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/util/dh;->a:Lcom/yelp/android/ui/util/dg;

    invoke-static {v0}, Lcom/yelp/android/ui/util/dg;->a(Lcom/yelp/android/ui/util/dg;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f07049d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/util/dh;->a:Lcom/yelp/android/ui/util/dg;

    invoke-static {v0}, Lcom/yelp/android/ui/util/dg;->a(Lcom/yelp/android/ui/util/dg;)Landroid/app/Activity;

    move-result-object v6

    iget-object v0, p0, Lcom/yelp/android/ui/util/dh;->a:Lcom/yelp/android/ui/util/dg;

    invoke-static {v0}, Lcom/yelp/android/ui/util/dg;->a(Lcom/yelp/android/ui/util/dg;)Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/util/dh;->a:Lcom/yelp/android/ui/util/dg;

    invoke-static {v2}, Lcom/yelp/android/ui/util/dg;->a(Lcom/yelp/android/ui/util/dg;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f070499

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->Business:Lcom/yelp/android/analytics/iris/ViewIri;

    const-class v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/util/dh;->a:Lcom/yelp/android/ui/util/dg;

    invoke-static {v0}, Lcom/yelp/android/ui/util/dg;->b(Lcom/yelp/android/ui/util/dg;)Lcom/yelp/android/appdata/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/i;->e(Z)V

    .line 77
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->PrivacyPolicyLearnMore:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 79
    return-void
.end method

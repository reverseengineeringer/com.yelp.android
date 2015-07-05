.class Lcom/yelp/android/ui/activities/businesspage/ah;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 1633
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ah;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 1637
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCantBuyReviewsMoreInfo:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 1638
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ah;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    const v1, 0x7f0700ab

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1639
    iget-object v6, p0, Lcom/yelp/android/ui/activities/businesspage/ah;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ah;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v2, ""

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->OpenURL:Lcom/yelp/android/analytics/iris/ViewIri;

    const-class v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 1641
    return-void
.end method

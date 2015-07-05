.class Lcom/yelp/android/ui/activities/businesspage/ag;
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
    .line 1595
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ag;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1599
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessNotRecommendedReviewsClicked:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ag;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1601
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ag;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    const v1, 0x7f070408

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/ag;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getAlias()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1608
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1610
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1611
    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1612
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ag;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 1617
    :goto_0
    return-void

    .line 1614
    :cond_1
    iget-object v6, p0, Lcom/yelp/android/ui/activities/businesspage/ag;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ag;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v2, ""

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->OpenURL:Lcom/yelp/android/analytics/iris/ViewIri;

    const-class v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.class Lcom/yelp/android/ui/activities/businesspage/bu;
.super Lcom/yelp/android/ui/activities/businesspage/cc;
.source "BusinessPageFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 0

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/bu;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/cc;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bu;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/bu;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/bu;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->d(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/bu;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/List;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 1285
    return-void
.end method

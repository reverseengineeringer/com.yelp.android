.class Lcom/yelp/android/ui/activities/businesspage/ae;
.super Lcom/yelp/android/ui/activities/businesspage/cc;
.source "BusinessPageFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 0

    .prologue
    .line 1469
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ae;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/cc;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ae;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ae;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/ae;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->f(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 1474
    return-void
.end method

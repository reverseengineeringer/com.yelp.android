.class Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$5;
.super Ljava/lang/Object;
.source "ReviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$5;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 336
    if-eqz v0, :cond_0

    .line 337
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPreviousReviewsBrowse:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 338
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$5;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$5;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->Q()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$5;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-virtual {v5}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "business_country"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v0, v3, v4, v5}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->startActivity(Landroid/content/Intent;)V

    .line 347
    :cond_0
    return-void
.end method

.class Lcom/yelp/android/ui/activities/reviewpage/ar;
.super Ljava/lang/Object;
.source "ReviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ar;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPreviousReviewsBrowse:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 313
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ar;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 314
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ar;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ar;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "business_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "business_name"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v4, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->startActivity(Landroid/content/Intent;)V

    .line 318
    :cond_0
    return-void
.end method

.class Lcom/yelp/android/ui/activities/reviews/r;
.super Ljava/lang/Object;
.source "ActivityReviewWrite.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/ui/activities/reviews/ReviewState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/r;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/reviews/ReviewState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/ui/activities/reviews/ReviewState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 691
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->NOT_STARTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne p2, v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/r;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;I)I

    .line 706
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/r;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Lcom/yelp/android/ui/activities/reviews/ReviewState;)V

    .line 708
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/r;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->finish()V

    .line 709
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/r;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/r;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->e(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getUserReviewRating()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;I)I

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 668
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/r;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 670
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/r;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 673
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/r;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    const v2, 0x7f0701fc

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/yelp/android/ui/activities/reviews/s;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reviews/s;-><init>(Lcom/yelp/android/ui/activities/reviews/r;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 685
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 663
    check-cast p2, Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/r;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/reviews/ReviewState;)V

    return-void
.end method

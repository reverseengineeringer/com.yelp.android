.class final Lcom/yelp/android/ui/activities/reviews/u;
.super Ljava/lang/Object;
.source "ActivityReviewWrite.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 835
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/u;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviews/u;->b:Ljava/lang/String;

    .line 837
    iput p3, p0, Lcom/yelp/android/ui/activities/reviews/u;->c:I

    .line 838
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 842
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/u;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/u;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Ljava/lang/String;)Ljava/lang/String;

    .line 843
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/u;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    iget v1, p0, Lcom/yelp/android/ui/activities/reviews/u;->c:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;I)I

    .line 844
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/u;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Lcom/yelp/android/ui/activities/reviews/ReviewState;)V

    .line 845
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/u;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->j(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/u;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/reviews/v;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviews/v;-><init>(Lcom/yelp/android/ui/activities/reviews/u;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->post(Ljava/lang/Runnable;)Z

    .line 857
    :cond_0
    return-void
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
    .line 861
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v0

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v0

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorNotConnectedToInternet:I

    if-eq v0, v1, :cond_0

    .line 864
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/u;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0, p2}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/u;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->j(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/u;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Z)Z

    .line 869
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/u;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 870
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/u;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 871
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/u;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070265

    new-instance v2, Lcom/yelp/android/ui/activities/reviews/w;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reviews/w;-><init>(Lcom/yelp/android/ui/activities/reviews/u;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 882
    :cond_1
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 830
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/u;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method

.class Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$2;
.super Ljava/lang/Object;
.source "ActivityAbstractReviewPager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/serializable/ReviewDeleteResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$2;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/ReviewDeleteResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/ReviewDeleteResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$2;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->hideLoadingDialog()V

    .line 423
    invoke-virtual {p2}, Lcom/yelp/android/serializable/ReviewDeleteResponse;->b()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    .line 424
    invoke-virtual {p2}, Lcom/yelp/android/serializable/ReviewDeleteResponse;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->l()V

    .line 435
    :goto_0
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->ReviewDeleted:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 436
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 437
    const-string/jumbo v2, "deleted_review"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$2;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 438
    const-string/jumbo v2, "previous_review"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 439
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$2;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;

    const/16 v2, 0x41c

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->setResult(ILandroid/content/Intent;)V

    .line 440
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$2;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->finish()V

    .line 441
    return-void

    .line 430
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v1

    .line 431
    new-instance v2, Ljava/util/Locale;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->I()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Ljava/util/Locale;)V

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
    .line 411
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$2;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->hideLoadingDialog()V

    .line 412
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$2;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07029b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070318

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 418
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 407
    check-cast p2, Lcom/yelp/android/serializable/ReviewDeleteResponse;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/ReviewDeleteResponse;)V

    return-void
.end method

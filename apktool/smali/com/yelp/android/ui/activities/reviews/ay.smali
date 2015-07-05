.class Lcom/yelp/android/ui/activities/reviews/ay;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "ReviewOverviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Lcom/yelp/android/appdata/webrequests/fb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/fb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 553
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fb;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fb;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ao;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fb;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fb;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 559
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fb;->f()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Z)Z

    .line 561
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 562
    const-string/jumbo v0, "is_converted_tip"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->g(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string/jumbo v0, "review_state"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->h(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getReviewStateString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->i(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    const-string/jumbo v0, "source"

    const-string/jumbo v2, "post_review_ynra"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    .line 568
    const-string/jumbo v2, "sign_up_status"

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/support/h;->u()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object v2, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewSaved:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    invoke-static {v2, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 570
    const-string/jumbo v1, "8uz0h4"

    invoke-static {v1}, Lcom/adjust/sdk/e;->a(Ljava/lang/String;)V

    .line 571
    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaEventIri;->ReviewSaved:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    invoke-static {v1}, Lcom/yelp/android/analytics/j;->a(Lcom/yelp/android/analytics/iris/KahunaEventIri;)V

    .line 573
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideLoadingDialog()V

    .line 575
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->h()Lcom/yelp/android/serializable/Review;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fb;->g()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 579
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fb;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 580
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fb;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 583
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fb;->f()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->q()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 586
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->j(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 587
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->j(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->k(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Landroid/widget/ToggleButton;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->l(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/util/z;->a(Landroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 589
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->c()V

    .line 591
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->m(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    .line 596
    :cond_2
    :goto_1
    return-void

    .line 575
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->h()Lcom/yelp/android/serializable/Review;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Review;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 594
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->m(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x1

    return v0
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
    .line 535
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideLoadingDialog()V

    .line 536
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 537
    instance-of v0, p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    .line 539
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ay;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    const v2, 0x7f070642

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->startActivity(Landroid/content/Intent;)V

    .line 547
    :goto_0
    return-void

    .line 541
    :cond_0
    instance-of v0, p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    invoke-virtual {p2, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 545
    :cond_1
    const v0, 0x7f070249

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 527
    check-cast p2, Lcom/yelp/android/appdata/webrequests/fb;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/ay;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fb;)V

    return-void
.end method

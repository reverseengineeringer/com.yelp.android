.class Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "ReviewOverviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/dz$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dz$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/dz$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 605
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dz$a;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dz$a;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/yelp/android/ui/activities/reviews/c;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dz$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 610
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dz$a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 611
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dz$a;->f()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Z)Z

    .line 613
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->h()Lcom/yelp/android/serializable/Review;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dz$a;->g()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 620
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 621
    const-string/jumbo v0, "is_converted_tip"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->g(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string/jumbo v0, "review_state"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->h(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getReviewStateString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string/jumbo v0, "source"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "review_source"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    .line 625
    const-string/jumbo v3, "sign_up_status"

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/support/b;->u()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string/jumbo v3, "review_id"

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->i(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string/jumbo v3, "review_length"

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->j(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ReviewSaved:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v3, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 629
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->l()Lcom/yelp/android/analytics/adjust/AdjustManager;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->REVIEW_SAVED:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    invoke-virtual {v2, v3}, Lcom/yelp/android/analytics/adjust/AdjustManager;->a(Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;)V

    .line 630
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/analytics/i;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/KahunaEventIri;->ReviewSaved:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    invoke-virtual {v2, v3}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaEventIri;)V

    .line 632
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideLoadingDialog()V

    .line 634
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dz$a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 635
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dz$a;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 638
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dz$a;->f()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->q()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 642
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->k(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 643
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->k(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->l(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Landroid/widget/ToggleButton;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->m(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/util/p;->a(Landroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 646
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->c()V

    .line 648
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->n(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    .line 653
    :cond_1
    :goto_1
    return-void

    .line 613
    :cond_2
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dz$a;->g()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/c;->h()Lcom/yelp/android/serializable/Review;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Review;->c()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 651
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->n(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 580
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
    .line 585
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideLoadingDialog()V

    .line 586
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 587
    instance-of v0, p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    .line 590
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070207

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->startActivity(Landroid/content/Intent;)V

    .line 599
    :goto_0
    return-void

    .line 593
    :cond_0
    instance-of v0, p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 595
    invoke-virtual {p2, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 597
    :cond_1
    const v0, 0x7f07029f

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 577
    check-cast p2, Lcom/yelp/android/appdata/webrequests/dz$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment$10;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dz$a;)V

    return-void
.end method

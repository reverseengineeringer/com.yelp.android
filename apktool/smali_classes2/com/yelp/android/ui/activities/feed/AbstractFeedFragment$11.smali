.class Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$11;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$11;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 0
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
    .line 448
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 8
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
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 415
    invoke-static {p2}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$11;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    if-nez v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 420
    :cond_0
    check-cast p1, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    .line 421
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$11;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/activities/feed/a;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    .line 423
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->b()Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    move-result-object v4

    .line 424
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->d()Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    move-result-object v5

    .line 425
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->m()Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    move-result-object v6

    .line 426
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->l()Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    move-result-object v7

    .line 427
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->ADD:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    if-ne v4, v0, :cond_1

    move v0, v1

    .line 428
    :goto_1
    sget-object v4, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$5;->b:[I

    invoke-virtual {v5}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 442
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$11;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 427
    goto :goto_1

    .line 430
    :pswitch_0
    if-nez v0, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v6, v2}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->a(Z)V

    .line 431
    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->a()I

    move-result v2

    if-eqz v0, :cond_3

    move v1, v3

    :cond_3
    add-int v0, v2, v1

    invoke-virtual {v7, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->a(I)V

    goto :goto_2

    .line 434
    :pswitch_1
    if-nez v0, :cond_4

    move v2, v1

    :cond_4
    invoke-virtual {v6, v2}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->b(Z)V

    .line 435
    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->b()I

    move-result v2

    if-eqz v0, :cond_5

    :goto_3
    add-int v0, v2, v3

    invoke-virtual {v7, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->b(I)V

    goto :goto_2

    :cond_5
    move v3, v1

    goto :goto_3

    .line 438
    :pswitch_2
    if-nez v0, :cond_6

    move v2, v1

    :cond_6
    invoke-virtual {v6, v2}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->c(Z)V

    .line 439
    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->c()I

    move-result v2

    if-eqz v0, :cond_7

    :goto_4
    add-int v0, v2, v3

    invoke-virtual {v7, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->c(I)V

    goto :goto_2

    :cond_7
    move v3, v1

    goto :goto_4

    .line 428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 413
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$11;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method

.class Lcom/yelp/android/ui/widgets/ReviewPagerFragment$2;
.super Ljava/lang/Object;
.source "ReviewPagerFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/widgets/ReviewPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$2;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$2;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->f()V

    .line 391
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$2;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->d(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$2;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v4

    .line 336
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 386
    :goto_0
    return-void

    .line 338
    :pswitch_0
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->FUNNY:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    move-object v3, v0

    .line 349
    :goto_1
    if-eqz p2, :cond_0

    sget-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->ADD:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    .line 350
    :goto_2
    new-instance v5, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    iget-object v6, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$2;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v6}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->e(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v6

    iget-object v7, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$2;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v7}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v0, v3, v7}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;-><init>(Lcom/yelp/android/appdata/webrequests/core/c$a;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;Ljava/lang/String;)V

    .line 353
    new-array v6, v2, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 355
    iget-object v6, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$2;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v6}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->f(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v5, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->ADD:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    if-ne v0, v5, :cond_1

    move v0, v1

    .line 361
    :goto_3
    sget-object v5, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$5;->b:[I

    invoke-virtual {v3}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_1

    .line 384
    :goto_4
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$2;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$2;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->c(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a()V

    goto :goto_0

    .line 341
    :pswitch_1
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->COOL:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    move-object v3, v0

    .line 342
    goto :goto_1

    .line 344
    :pswitch_2
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->USEFUL:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    move-object v3, v0

    .line 345
    goto :goto_1

    .line 349
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->REMOVE:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    goto :goto_2

    .line 357
    :cond_1
    const/4 v0, -0x1

    goto :goto_3

    .line 363
    :pswitch_3
    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->l()Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    move-result-object v3

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->l()Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->a()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v3, v5}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->a(I)V

    .line 367
    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->m()Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    move-result-object v3

    if-ne v0, v1, :cond_2

    :goto_5
    invoke-virtual {v3, v1}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->a(Z)V

    goto :goto_4

    :cond_2
    move v1, v2

    goto :goto_5

    .line 370
    :pswitch_4
    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->l()Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    move-result-object v3

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->l()Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->b()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v3, v5}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->b(I)V

    .line 374
    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->m()Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    move-result-object v3

    if-ne v0, v1, :cond_3

    :goto_6
    invoke-virtual {v3, v1}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->b(Z)V

    goto :goto_4

    :cond_3
    move v1, v2

    goto :goto_6

    .line 377
    :pswitch_5
    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->l()Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    move-result-object v3

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->l()Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->c()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v3, v5}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->c(I)V

    .line 381
    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->m()Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    move-result-object v3

    if-ne v0, v1, :cond_4

    :goto_7
    invoke-virtual {v3, v1}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->c(Z)V

    goto :goto_4

    :cond_4
    move v1, v2

    goto :goto_7

    .line 336
    :pswitch_data_0
    .packed-switch 0x7f0f010a
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 361
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

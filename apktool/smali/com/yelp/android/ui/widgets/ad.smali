.class Lcom/yelp/android/ui/widgets/ad;
.super Ljava/lang/Object;
.source "ReviewPagerFragment.java"

# interfaces
.implements Landroid/support/v4/view/du;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 381
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Lcom/yelp/android/ui/widgets/ag;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yelp/android/ui/widgets/ag;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$LoadingFragment;

    if-eqz v2, :cond_5

    .line 382
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v2, v1, v1}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;ZZ)V

    .line 383
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Lcom/yelp/android/ui/widgets/ag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/ag;->a()Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->LOADING_FORWARDS:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    if-ne v2, v3, :cond_1

    .line 384
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Z)Z

    .line 393
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Lcom/yelp/android/ui/widgets/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Lcom/yelp/android/ui/widgets/ah;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->h(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Z

    move-result v2

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->h(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->i(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/yelp/android/ui/widgets/ah;->a(ZI)V

    .line 410
    :cond_0
    :goto_2
    return-void

    .line 385
    :cond_1
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Lcom/yelp/android/ui/widgets/ag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/ag;->a()Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->LOADING_BACKWARDS:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    if-ne v2, v3, :cond_2

    .line 386
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Z)Z

    goto :goto_0

    .line 391
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    if-eqz p1, :cond_3

    :goto_3
    invoke-static {v2, v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Z)Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_3

    .line 394
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->j(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 398
    :cond_5
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    iget-object v3, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v3}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)V

    .line 399
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Lcom/yelp/android/ui/widgets/ag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/ag;->a()Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->DEFAULT:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    if-ne v2, v3, :cond_8

    .line 400
    iget-object v3, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    if-lez p1, :cond_6

    move v2, v0

    :goto_4
    iget-object v4, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v4}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge p1, v4, :cond_7

    :goto_5
    invoke-static {v3, v2, v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;ZZ)V

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_5

    .line 401
    :cond_8
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Lcom/yelp/android/ui/widgets/ag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/ag;->a()Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->LOADING:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    if-ne v2, v3, :cond_9

    .line 402
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v1, v0, v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;ZZ)V

    goto :goto_2

    .line 403
    :cond_9
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Lcom/yelp/android/ui/widgets/ag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/ag;->a()Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->LOADING_BACKWARDS:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    if-ne v2, v3, :cond_b

    .line 404
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    iget-object v3, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_a

    move v1, v0

    :cond_a
    invoke-static {v2, v0, v1}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;ZZ)V

    goto/16 :goto_2

    .line 405
    :cond_b
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Lcom/yelp/android/ui/widgets/ag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/ag;->a()Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->LOADING_FORWARDS:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    if-ne v2, v3, :cond_0

    .line 406
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ad;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    if-lez p1, :cond_c

    move v1, v0

    :cond_c
    invoke-static {v2, v1, v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;ZZ)V

    goto/16 :goto_2
.end method

.method public a(IFI)V
    .locals 0

    .prologue
    .line 415
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 420
    return-void
.end method

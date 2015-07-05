.class Lcom/yelp/android/ui/widgets/ag;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ReviewPagerFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

.field private final b:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Landroid/support/v4/app/FragmentManager;Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/ag;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    .line 581
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 582
    iput-object p3, p0, Lcom/yelp/android/ui/widgets/ag;->b:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    .line 583
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ag;->b:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 618
    sget-object v0, Lcom/yelp/android/ui/widgets/af;->a:[I

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ag;->b:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 633
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ag;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    .line 620
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ag;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 624
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ag;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 628
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ag;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 631
    :pswitch_3
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ag;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 587
    sget-object v0, Lcom/yelp/android/ui/widgets/af;->a:[I

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ag;->b:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 612
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 590
    :pswitch_0
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ag;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ag;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    move-result-object v0

    goto :goto_0

    .line 592
    :pswitch_1
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ag;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_0

    .line 593
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ag;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ag;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    move-result-object v0

    goto :goto_0

    .line 595
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$LoadingFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$LoadingFragment;-><init>()V

    goto :goto_0

    .line 598
    :pswitch_2
    if-lez p1, :cond_1

    .line 599
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ag;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ag;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    move-result-object v0

    goto :goto_0

    .line 601
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$LoadingFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$LoadingFragment;-><init>()V

    goto :goto_0

    .line 604
    :pswitch_3
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ag;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 605
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ag;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ag;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    move-result-object v0

    goto :goto_0

    .line 607
    :cond_2
    new-instance v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$LoadingFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$LoadingFragment;-><init>()V

    goto :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

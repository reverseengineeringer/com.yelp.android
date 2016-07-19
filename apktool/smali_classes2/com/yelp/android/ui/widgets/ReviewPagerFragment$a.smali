.class Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;
.super Landroid/support/v4/app/n;
.source "ReviewPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/widgets/ReviewPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

.field private final b:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Landroid/support/v4/app/l;Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    .line 610
    invoke-direct {p0, p2}, Landroid/support/v4/app/n;-><init>(Landroid/support/v4/app/l;)V

    .line 611
    iput-object p3, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->b:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    .line 612
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 616
    sget-object v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$5;->a:[I

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->b:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 641
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 619
    :pswitch_0
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    move-result-object v0

    goto :goto_0

    .line 621
    :pswitch_1
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_0

    .line 622
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    move-result-object v0

    goto :goto_0

    .line 624
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$LoadingFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$LoadingFragment;-><init>()V

    goto :goto_0

    .line 627
    :pswitch_2
    if-lez p1, :cond_1

    .line 628
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    move-result-object v0

    goto :goto_0

    .line 630
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$LoadingFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$LoadingFragment;-><init>()V

    goto :goto_0

    .line 633
    :pswitch_3
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 634
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->b(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    move-result-object v0

    goto :goto_0

    .line 636
    :cond_2
    new-instance v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$LoadingFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$LoadingFragment;-><init>()V

    goto :goto_0

    .line 616
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .locals 2

    .prologue
    .line 647
    sget-object v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$5;->a:[I

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->b:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 662
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    .line 649
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 653
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 657
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    :pswitch_3
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public d()Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$a;->b:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    return-object v0
.end method

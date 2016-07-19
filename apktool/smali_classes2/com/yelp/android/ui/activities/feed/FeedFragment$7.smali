.class Lcom/yelp/android/ui/activities/feed/FeedFragment$7;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/FeedFragment;->f(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/TabLayout$c;)V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Landroid/support/design/widget/TabLayout$c;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->MAIN:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 543
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->MAIN:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 544
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->h()V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Landroid/support/design/widget/TabLayout$c;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->NEARBY:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 547
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->NEARBY:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    goto :goto_0

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Landroid/support/design/widget/TabLayout$c;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 549
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->FRIEND:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 550
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->FRIEND:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    goto :goto_0

    .line 551
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->d(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Landroid/support/design/widget/TabLayout$c;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 552
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->FOLLOWING:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 553
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->FOLLOWING:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    goto :goto_0

    .line 554
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->e(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Landroid/support/design/widget/TabLayout$c;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->CHECK_IN:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 556
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->CHECK_IN:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    goto :goto_0
.end method

.method public b(Landroid/support/design/widget/TabLayout$c;)V
    .locals 0

    .prologue
    .line 561
    return-void
.end method

.method public c(Landroid/support/design/widget/TabLayout$c;)V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b(Z)V

    .line 566
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->h()V

    .line 567
    return-void
.end method

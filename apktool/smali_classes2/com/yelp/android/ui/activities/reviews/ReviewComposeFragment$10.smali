.class Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;
.super Ljava/lang/Object;
.source "ReviewComposeFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    const/16 v6, 0x190

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 524
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 525
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->h(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 526
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->i(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    .line 533
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->j(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->j(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)I

    move-result v2

    if-ge v1, v2, :cond_1

    :cond_0
    if-lez v1, :cond_1

    .line 535
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v2, v4}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Z)Z

    .line 536
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v2, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;I)I

    .line 540
    :cond_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->k(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Z

    move-result v2

    if-nez v2, :cond_3

    if-le v1, v6, :cond_3

    .line 542
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v2, v5}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Z)Z

    .line 543
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v2, v5}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Z)Z

    .line 544
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;I)I

    .line 545
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    .line 546
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Landroid/graphics/Rect;)V

    .line 562
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;I)I

    .line 563
    return-void

    .line 547
    :cond_3
    if-le v1, v6, :cond_4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->l(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)I

    move-result v2

    if-eq v2, v1, :cond_4

    .line 552
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 553
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->j(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)I

    move-result v0

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0, v4}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->c(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Z)Z

    .line 557
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0, v4}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;Z)Z

    .line 558
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->m(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHeight(I)V

    .line 559
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$10;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->g(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V

    goto :goto_0
.end method

.class Lcom/yelp/android/ui/widgets/ReviewPagerFragment$4;
.super Ljava/lang/Object;
.source "ReviewPagerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 525
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$4;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 528
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$4;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->d(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$4;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->d(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->b(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 531
    :cond_0
    return-void
.end method

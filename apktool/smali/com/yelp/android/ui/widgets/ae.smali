.class Lcom/yelp/android/ui/widgets/ae;
.super Ljava/lang/Object;
.source "ReviewPagerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/ae;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 504
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ae;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->d(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ae;->a:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->d(Lcom/yelp/android/ui/widgets/ReviewPagerFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->b(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 507
    :cond_0
    return-void
.end method

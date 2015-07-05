.class Lcom/yelp/android/ui/activities/reviews/ad;
.super Lcom/yelp/android/ui/util/dd;
.source "ReviewComposeFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ad;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ad;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->e(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    return-void
.end method

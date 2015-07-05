.class Lcom/yelp/android/ui/widgets/d;
.super Lcom/yelp/android/ui/util/dd;
.source "Darwin.java"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/yelp/android/ui/widgets/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/b;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/d;->b:Lcom/yelp/android/ui/widgets/b;

    iput-object p2, p0, Lcom/yelp/android/ui/widgets/d;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 65
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/d;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->b:Lcom/yelp/android/ui/widgets/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/b;->a(Lcom/yelp/android/ui/widgets/b;Z)Z

    .line 68
    return-void
.end method

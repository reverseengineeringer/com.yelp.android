.class final Lcom/yelp/android/ui/util/cx;
.super Ljava/lang/Object;
.source "YelpAnimationUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/util/cx;->a:Landroid/view/View;

    iput p2, p0, Lcom/yelp/android/ui/util/cx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/util/cx;->a:Landroid/view/View;

    iget v1, p0, Lcom/yelp/android/ui/util/cx;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

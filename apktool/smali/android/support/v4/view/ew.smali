.class final Landroid/support/v4/view/ew;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatKK.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroid/support/v4/view/ez;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ez;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Landroid/support/v4/view/ew;->a:Landroid/support/v4/view/ez;

    iput-object p2, p0, Landroid/support/v4/view/ew;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Landroid/support/v4/view/ew;->a:Landroid/support/v4/view/ez;

    iget-object v1, p0, Landroid/support/v4/view/ew;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/ez;->a(Landroid/view/View;)V

    .line 29
    return-void
.end method

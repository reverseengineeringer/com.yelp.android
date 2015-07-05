.class final Landroid/support/v4/view/eu;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompatJB.java"


# instance fields
.field final synthetic a:Landroid/support/v4/view/ex;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ex;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Landroid/support/v4/view/eu;->a:Landroid/support/v4/view/ex;

    iput-object p2, p0, Landroid/support/v4/view/eu;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v4/view/eu;->a:Landroid/support/v4/view/ex;

    iget-object v1, p0, Landroid/support/v4/view/eu;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/ex;->c(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v4/view/eu;->a:Landroid/support/v4/view/ex;

    iget-object v1, p0, Landroid/support/v4/view/eu;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/ex;->b(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v4/view/eu;->a:Landroid/support/v4/view/ex;

    iget-object v1, p0, Landroid/support/v4/view/eu;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/ex;->a(Landroid/view/View;)V

    .line 53
    return-void
.end method

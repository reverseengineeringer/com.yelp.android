.class Landroid/support/design/widget/h$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonHoneycombMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/h;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/h;


# direct methods
.method constructor <init>(Landroid/support/design/widget/h;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Landroid/support/design/widget/h$1;->a:Landroid/support/design/widget/h;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/design/widget/h$1;->a:Landroid/support/design/widget/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/h;Z)Z

    .line 59
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/design/widget/h$1;->a:Landroid/support/design/widget/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/h;Z)Z

    .line 64
    iget-object v0, p0, Landroid/support/design/widget/h$1;->a:Landroid/support/design/widget/h;

    iget-object v0, v0, Landroid/support/design/widget/h;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/widget/h$1;->a:Landroid/support/design/widget/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/h;Z)Z

    .line 53
    iget-object v0, p0, Landroid/support/design/widget/h$1;->a:Landroid/support/design/widget/h;

    iget-object v0, v0, Landroid/support/design/widget/h;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    return-void
.end method

.class Landroid/support/design/widget/r$1;
.super Ljava/lang/Object;
.source "ValueAnimatorCompatImplHoneycombMr1.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/r;->a(Landroid/support/design/widget/p$e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/p$e$b;

.field final synthetic b:Landroid/support/design/widget/r;


# direct methods
.method constructor <init>(Landroid/support/design/widget/r;Landroid/support/design/widget/p$e$b;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Landroid/support/design/widget/r$1;->b:Landroid/support/design/widget/r;

    iput-object p2, p0, Landroid/support/design/widget/r$1;->a:Landroid/support/design/widget/p$e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/widget/r$1;->a:Landroid/support/design/widget/p$e$b;

    invoke-interface {v0}, Landroid/support/design/widget/p$e$b;->a()V

    .line 53
    return-void
.end method

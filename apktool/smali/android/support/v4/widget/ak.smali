.class Landroid/support/v4/widget/ak;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/an;

.field final synthetic b:Landroid/support/v4/widget/ai;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ai;Landroid/support/v4/widget/an;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/ai;

    iput-object p2, p0, Landroid/support/v4/widget/ak;->a:Landroid/support/v4/widget/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Landroid/support/v4/widget/ak;->a:Landroid/support/v4/widget/an;

    invoke-virtual {v0}, Landroid/support/v4/widget/an;->j()V

    .line 364
    iget-object v0, p0, Landroid/support/v4/widget/ak;->a:Landroid/support/v4/widget/an;

    invoke-virtual {v0}, Landroid/support/v4/widget/an;->a()V

    .line 365
    iget-object v0, p0, Landroid/support/v4/widget/ak;->a:Landroid/support/v4/widget/an;

    iget-object v1, p0, Landroid/support/v4/widget/ak;->a:Landroid/support/v4/widget/an;

    invoke-virtual {v1}, Landroid/support/v4/widget/an;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/an;->b(F)V

    .line 366
    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/ai;

    iget-boolean v0, v0, Landroid/support/v4/widget/ai;->a:Z

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/ai;

    iput-boolean v2, v0, Landroid/support/v4/widget/ai;->a:Z

    .line 370
    const-wide/16 v0, 0x535

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 371
    iget-object v0, p0, Landroid/support/v4/widget/ak;->a:Landroid/support/v4/widget/an;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/an;->a(Z)V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/ai;

    iget-object v1, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/ai;

    invoke-static {v1}, Landroid/support/v4/widget/ai;->a(Landroid/support/v4/widget/ai;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/widget/ai;->a(Landroid/support/v4/widget/ai;F)F

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/ai;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/ai;->a(Landroid/support/v4/widget/ai;F)F

    .line 354
    return-void
.end method
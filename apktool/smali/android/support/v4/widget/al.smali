.class Landroid/support/v4/widget/al;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/ai;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ai;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Landroid/support/v4/widget/al;->a:Landroid/support/v4/widget/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Landroid/support/v4/widget/al;->a:Landroid/support/v4/widget/ai;

    invoke-virtual {v0}, Landroid/support/v4/widget/ai;->invalidateSelf()V

    .line 384
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v4/widget/al;->a:Landroid/support/v4/widget/ai;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v4/widget/ai;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 389
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Landroid/support/v4/widget/al;->a:Landroid/support/v4/widget/ai;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/ai;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 394
    return-void
.end method
.class Landroid/support/v4/widget/o$3;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/o;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/o;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Landroid/support/v4/widget/o$3;->a:Landroid/support/v4/widget/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Landroid/support/v4/widget/o$3;->a:Landroid/support/v4/widget/o;

    invoke-virtual {v0}, Landroid/support/v4/widget/o;->invalidateSelf()V

    .line 454
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Landroid/support/v4/widget/o$3;->a:Landroid/support/v4/widget/o;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v4/widget/o;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 459
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Landroid/support/v4/widget/o$3;->a:Landroid/support/v4/widget/o;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/o;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 464
    return-void
.end method

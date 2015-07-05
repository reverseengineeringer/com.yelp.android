.class Landroid/support/v4/view/cv;
.super Ljava/lang/Object;
.source "ViewCompatLollipop.java"


# direct methods
.method public static a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 36
    return-void
.end method

.method public static a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 40
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/bn;)V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Landroid/support/v4/view/cw;

    invoke-direct {v0, p1}, Landroid/support/v4/view/cw;-><init>(Landroid/support/v4/view/bn;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 67
    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    .line 133
    return-void
.end method

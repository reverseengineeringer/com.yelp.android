.class public abstract Landroid/support/v7/app/ActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1362
    return-void
.end method


# virtual methods
.method public abstract a()Landroid/view/View;
.end method

.method public a(Lcom/yelp/android/m/b;)Lcom/yelp/android/m/a;
    .locals 1

    .prologue
    .line 1044
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 1008
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1009
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Setting a non-zero elevation is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1012
    :cond_0
    return-void
.end method

.method public abstract a(I)V
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 1036
    return-void
.end method

.method public abstract a(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract a(Landroid/support/v7/app/a;)V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public abstract a(Z)V
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1064
    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()I
.end method

.method public abstract b(I)V
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 877
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1074
    return-void
.end method

.method public abstract b(Z)V
.end method

.method public abstract c()I
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 937
    return-void
.end method

.method public abstract c(Z)V
.end method

.method public abstract d()V
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 835
    return-void
.end method

.method public abstract e()V
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 953
    if-eqz p1, :cond_0

    .line 954
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Hide on content scroll is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :cond_0
    return-void
.end method

.method public f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 847
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 1028
    return-void
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 1032
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 1054
    const/4 v0, 0x0

    return v0
.end method

.method public h(Z)V
    .locals 0

    .prologue
    .line 1040
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 1069
    const/4 v0, 0x0

    return v0
.end method

.class public abstract Landroid/support/v7/app/ActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ActionBar$LayoutParams;,
        Landroid/support/v7/app/ActionBar$b;,
        Landroid/support/v7/app/ActionBar$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1311
    return-void
.end method


# virtual methods
.method public abstract a()Landroid/view/View;
.end method

.method public a(Lcom/yelp/android/r/a$a;)Lcom/yelp/android/r/a;
    .locals 1

    .prologue
    .line 1037
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 1001
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1002
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Setting a non-zero elevation is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1005
    :cond_0
    return-void
.end method

.method public abstract a(I)V
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 1029
    return-void
.end method

.method public abstract a(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract a(Landroid/support/v7/app/ActionBar$a;)V
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
    .line 1057
    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()I
.end method

.method public abstract b(I)V
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1067
    return-void
.end method

.method public abstract b(Z)V
.end method

.method public abstract c()I
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 930
    return-void
.end method

.method public abstract c(Z)V
.end method

.method public abstract d()V
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 828
    return-void
.end method

.method public abstract e()V
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 946
    if-eqz p1, :cond_0

    .line 947
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Hide on content scroll is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :cond_0
    return-void
.end method

.method public f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 840
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 1021
    return-void
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 1025
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 1047
    const/4 v0, 0x0

    return v0
.end method

.method public h(Z)V
    .locals 0

    .prologue
    .line 1033
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 1062
    const/4 v0, 0x0

    return v0
.end method

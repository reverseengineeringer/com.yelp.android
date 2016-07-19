.class final Landroid/support/v4/view/ar$1;
.super Ljava/lang/Object;
.source "ViewCompatLollipop.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ar;->a(Landroid/view/View;Landroid/support/v4/view/ab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/ab;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ab;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Landroid/support/v4/view/ar$1;->a:Landroid/support/v4/view/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/support/v4/view/bh;

    invoke-direct {v0, p2}, Landroid/support/v4/view/bh;-><init>(Landroid/view/WindowInsets;)V

    .line 62
    iget-object v1, p0, Landroid/support/v4/view/ar$1;->a:Landroid/support/v4/view/ab;

    invoke-interface {v1, p1, v0}, Landroid/support/v4/view/ab;->a(Landroid/view/View;Landroid/support/v4/view/bg;)Landroid/support/v4/view/bg;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bh;

    .line 64
    invoke-virtual {v0}, Landroid/support/v4/view/bh;->g()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

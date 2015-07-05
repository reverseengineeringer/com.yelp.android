.class Landroid/support/v7/app/g;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Landroid/support/v4/view/bn;


# instance fields
.field final synthetic a:Landroid/support/v7/app/ActionBarActivityDelegateBase;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Landroid/support/v7/app/g;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/fa;)Landroid/support/v4/view/fa;
    .locals 4

    .prologue
    .line 321
    invoke-virtual {p2}, Landroid/support/v4/view/fa;->b()I

    move-result v0

    .line 322
    iget-object v1, p0, Landroid/support/v7/app/g;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-static {v1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->c(Landroid/support/v7/app/ActionBarActivityDelegateBase;I)I

    move-result v1

    .line 324
    if-eq v0, v1, :cond_0

    .line 325
    invoke-virtual {p2}, Landroid/support/v4/view/fa;->a()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v4/view/fa;->c()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v4/view/fa;->d()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/support/v4/view/fa;->a(IIII)Landroid/support/v4/view/fa;

    move-result-object p2

    .line 331
    :cond_0
    return-object p2
.end method

.class final Landroid/support/v7/app/k$a;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/k;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/k;)V
    .locals 0

    .prologue
    .line 1716
    iput-object p1, p0, Landroid/support/v7/app/k$a;->a:Landroid/support/v7/app/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/k;Landroid/support/v7/app/k$1;)V
    .locals 0

    .prologue
    .line 1716
    invoke-direct {p0, p1}, Landroid/support/v7/app/k$a;-><init>(Landroid/support/v7/app/k;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/view/menu/f;Z)V
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Landroid/support/v7/app/k$a;->a:Landroid/support/v7/app/k;

    invoke-static {v0, p1}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k;Landroid/support/v7/internal/view/menu/f;)V

    .line 1729
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/f;)Z
    .locals 2

    .prologue
    .line 1719
    iget-object v0, p0, Landroid/support/v7/app/k$a;->a:Landroid/support/v7/app/k;

    invoke-virtual {v0}, Landroid/support/v7/app/k;->n()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1720
    if-eqz v0, :cond_0

    .line 1721
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1723
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

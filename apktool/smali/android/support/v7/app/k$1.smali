.class Landroid/support/v7/app/k$1;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/k;


# direct methods
.method constructor <init>(Landroid/support/v7/app/k;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Landroid/support/v7/app/k$1;->a:Landroid/support/v7/app/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Landroid/support/v7/app/k$1;->a:Landroid/support/v7/app/k;

    invoke-static {v0}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/support/v7/app/k$1;->a:Landroid/support/v7/app/k;

    invoke-static {v0, v2}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k;I)V

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/k$1;->a:Landroid/support/v7/app/k;

    invoke-static {v0}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k;)I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Landroid/support/v7/app/k$1;->a:Landroid/support/v7/app/k;

    const/16 v1, 0x6c

    invoke-static {v0, v1}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k;I)V

    .line 130
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/k$1;->a:Landroid/support/v7/app/k;

    invoke-static {v0, v2}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k;Z)Z

    .line 131
    iget-object v0, p0, Landroid/support/v7/app/k$1;->a:Landroid/support/v7/app/k;

    invoke-static {v0, v2}, Landroid/support/v7/app/k;->b(Landroid/support/v7/app/k;I)I

    .line 132
    return-void
.end method

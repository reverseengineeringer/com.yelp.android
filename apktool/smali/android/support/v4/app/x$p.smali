.class public abstract Landroid/support/v4/app/x$p;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "p"
.end annotation


# instance fields
.field d:Landroid/support/v4/app/x$d;

.field e:Ljava/lang/CharSequence;

.field f:Ljava/lang/CharSequence;

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1591
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x$p;->g:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/x$d;)V
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Landroid/support/v4/app/x$p;->d:Landroid/support/v4/app/x$d;

    if-eq v0, p1, :cond_0

    .line 1595
    iput-object p1, p0, Landroid/support/v4/app/x$p;->d:Landroid/support/v4/app/x$d;

    .line 1596
    iget-object v0, p0, Landroid/support/v4/app/x$p;->d:Landroid/support/v4/app/x$d;

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Landroid/support/v4/app/x$p;->d:Landroid/support/v4/app/x$d;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/x$d;->a(Landroid/support/v4/app/x$p;)Landroid/support/v4/app/x$d;

    .line 1600
    :cond_0
    return-void
.end method

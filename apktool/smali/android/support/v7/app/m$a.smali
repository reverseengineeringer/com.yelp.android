.class public Landroid/support/v7/app/m$a;
.super Landroid/support/v4/app/x$d;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/support/v4/app/x$d;-><init>(Landroid/content/Context;)V

    .line 81
    return-void
.end method


# virtual methods
.method protected b()Landroid/support/v4/app/x$e;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 86
    new-instance v0, Landroid/support/v7/app/m$d;

    invoke-direct {v0, v2}, Landroid/support/v7/app/m$d;-><init>(Landroid/support/v7/app/m$1;)V

    .line 92
    :goto_0
    return-object v0

    .line 87
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 88
    new-instance v0, Landroid/support/v7/app/m$c;

    invoke-direct {v0, v2}, Landroid/support/v7/app/m$c;-><init>(Landroid/support/v7/app/m$1;)V

    goto :goto_0

    .line 89
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 90
    new-instance v0, Landroid/support/v7/app/m$b;

    invoke-direct {v0, v2}, Landroid/support/v7/app/m$b;-><init>(Landroid/support/v7/app/m$1;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-super {p0}, Landroid/support/v4/app/x$d;->b()Landroid/support/v4/app/x$e;

    move-result-object v0

    goto :goto_0
.end method

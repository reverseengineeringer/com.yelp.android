.class Landroid/support/v7/app/m$d;
.super Landroid/support/v4/app/x$e;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/support/v4/app/x$e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/m$1;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/support/v7/app/m$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/x$d;Landroid/support/v4/app/w;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p1, Landroid/support/v4/app/x$d;->m:Landroid/support/v4/app/x$p;

    invoke-static {p2, v0}, Landroid/support/v7/app/m;->b(Landroid/support/v4/app/w;Landroid/support/v4/app/x$p;)V

    .line 125
    invoke-interface {p2}, Landroid/support/v4/app/w;->b()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.class Landroid/support/v7/app/m$b;
.super Landroid/support/v4/app/x$e;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/support/v4/app/x$e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/m$1;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/support/v7/app/m$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/x$d;Landroid/support/v4/app/w;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 102
    invoke-static {p2, p1}, Landroid/support/v7/app/m;->a(Landroid/support/v4/app/w;Landroid/support/v4/app/x$d;)V

    .line 103
    invoke-interface {p2}, Landroid/support/v4/app/w;->b()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

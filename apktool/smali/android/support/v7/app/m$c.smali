.class Landroid/support/v7/app/m$c;
.super Landroid/support/v4/app/x$e;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/support/v4/app/x$e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/m$1;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/support/v7/app/m$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/x$d;Landroid/support/v4/app/w;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 112
    invoke-static {p2, p1}, Landroid/support/v7/app/m;->a(Landroid/support/v4/app/w;Landroid/support/v4/app/x$d;)V

    .line 113
    invoke-interface {p2}, Landroid/support/v4/app/w;->b()Landroid/app/Notification;

    move-result-object v0

    .line 114
    invoke-static {v0, p1}, Landroid/support/v7/app/m;->a(Landroid/app/Notification;Landroid/support/v4/app/x$d;)V

    .line 115
    return-object v0
.end method

.class public Landroid/support/v4/app/x$e;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "e"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/x$d;Landroid/support/v4/app/w;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 471
    invoke-interface {p2}, Landroid/support/v4/app/w;->b()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

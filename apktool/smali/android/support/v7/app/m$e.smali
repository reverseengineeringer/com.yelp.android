.class public Landroid/support/v7/app/m$e;
.super Landroid/support/v4/app/x$p;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field a:[I

.field b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field c:Z

.field h:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/support/v4/app/x$p;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/m$e;->a:[I

    .line 176
    return-void
.end method

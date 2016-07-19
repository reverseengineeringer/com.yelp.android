.class final enum Lcom/yelp/android/appdata/Features$1;
.super Lcom/yelp/android/appdata/Features;
.source "Features.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/Features;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/appdata/Features;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/appdata/Features$1;)V

    return-void
.end method


# virtual methods
.method protected isEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 28
    invoke-static {p1}, Lcom/yelp/android/util/ffmpeg/FFmpeg;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

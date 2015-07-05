.class public Lcom/yelp/android/webimageview/ImageCache$ExternalStorageWrapper;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .prologue
    .line 450
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/yelp/android/y/f;
.super Lcom/yelp/android/y/d;
.source "InternalCacheDiskCacheFactory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 14
    const-string/jumbo v0, "image_manager_disk_cache"

    const/high16 v1, 0xfa00000

    invoke-direct {p0, p1, v0, v1}, Lcom/yelp/android/y/f;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/yelp/android/y/f$1;

    invoke-direct {v0, p1, p2}, Lcom/yelp/android/y/f$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/yelp/android/y/d;-><init>(Lcom/yelp/android/y/d$a;I)V

    .line 35
    return-void
.end method

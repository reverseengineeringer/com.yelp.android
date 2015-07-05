.class public Lcom/yelp/android/util/g;
.super Ljava/lang/Object;
.source "DataUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/yelp/android/debug/a;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 10
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "yelp-mocks"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

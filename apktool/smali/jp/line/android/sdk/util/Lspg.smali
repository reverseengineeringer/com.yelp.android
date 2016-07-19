.class public final Ljp/line/android/sdk/util/Lspg;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "line-sdk-encryption"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native gk(Landroid/content/Context;I)[B
.end method

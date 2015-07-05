.class public Lcom/yelp/android/ui/MonocleEngine;
.super Ljava/lang/Object;
.source "MonocleEngine.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 104
    :try_start_0
    const-string/jumbo v0, "monocle"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const-string/jumbo v0, "ActivityMonocle"

    const-string/jumbo v1, "JNI/C Library Not Loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native AddObject([BIIFFLcom/yelp/android/ui/ActivityMonocle$MonocleButton;)I
.end method

.method public native ClearObjects()V
.end method

.method public native Draw()Lcom/yelp/android/ui/ActivityMonocle$MonocleButton;
.end method

.method public native FlushTextures()V
.end method

.method public native Init()V
.end method

.method public native Resize(II)V
.end method

.method public native SetAzimuth(F)V
.end method

.method public native SetLocation(FF)V
.end method

.method public native SetRoll(F)V
.end method

.method public native SetRotation([F)V
.end method

.method public native Touch(II)V
.end method

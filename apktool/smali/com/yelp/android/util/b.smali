.class public Lcom/yelp/android/util/b;
.super Ljava/lang/Object;
.source "Architecture.java"


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    const-string/jumbo v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/yelp/android/util/b;->a:Z

    .line 9
    const-string/jumbo v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/yelp/android/util/b;->b:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lcom/yelp/android/util/b;->a:Z

    return v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/yelp/android/util/b;->b:Z

    return v0
.end method

.class public Lcom/yelp/android/util/b;
.super Ljava/lang/Object;
.source "Architecture.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:Z

.field private static final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    const-string/jumbo v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/b;->a:Ljava/lang/String;

    .line 9
    sget-object v0, Lcom/yelp/android/util/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "aarch64"

    sget-object v1, Lcom/yelp/android/util/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/yelp/android/util/b;->b:Z

    .line 11
    sget-object v0, Lcom/yelp/android/util/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/yelp/android/util/b;->c:Z

    return-void

    .line 9
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/yelp/android/util/b;->b:Z

    return v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/yelp/android/util/b;->c:Z

    return v0
.end method

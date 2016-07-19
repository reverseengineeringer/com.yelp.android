.class final enum Lcom/yelp/android/util/Holiday$3;
.super Lcom/yelp/android/util/Holiday;
.source "Holiday.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/util/Holiday;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/util/Holiday;-><init>(Ljava/lang/String;ILcom/yelp/android/util/Holiday$1;)V

    return-void
.end method


# virtual methods
.method public getThemeResource()I
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f090003

    return v0
.end method

.method public isActive(III)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 37
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    if-ne p3, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

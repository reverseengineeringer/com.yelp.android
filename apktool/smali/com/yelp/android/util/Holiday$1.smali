.class final enum Lcom/yelp/android/util/Holiday$1;
.super Lcom/yelp/android/util/Holiday;
.source "Holiday.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/util/Holiday;-><init>(Ljava/lang/String;ILcom/yelp/android/util/Holiday$1;)V

    return-void
.end method


# virtual methods
.method public getThemeResource()I
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f0f020c

    return v0
.end method

.method public isActive(III)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 15
    if-ne p2, v0, :cond_0

    const/16 v1, 0xe

    if-lt p3, v1, :cond_0

    const/16 v1, 0x11

    if-gt p3, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

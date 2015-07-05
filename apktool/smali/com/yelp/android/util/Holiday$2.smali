.class final enum Lcom/yelp/android/util/Holiday$2;
.super Lcom/yelp/android/util/Holiday;
.source "Holiday.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/util/Holiday;-><init>(Ljava/lang/String;ILcom/yelp/android/util/Holiday$1;)V

    return-void
.end method


# virtual methods
.method public getThemeResource()I
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f0f020a

    return v0
.end method

.method public isActive(III)Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/16 v0, 0xf

    if-lt p3, v0, :cond_0

    const/16 v0, 0x11

    if-gt p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

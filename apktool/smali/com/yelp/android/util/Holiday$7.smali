.class final enum Lcom/yelp/android/util/Holiday$7;
.super Lcom/yelp/android/util/Holiday;
.source "Holiday.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/util/Holiday;-><init>(Ljava/lang/String;ILcom/yelp/android/util/Holiday$1;)V

    return-void
.end method


# virtual methods
.method public getThemeResource()I
    .locals 1

    .prologue
    .line 101
    const v0, 0x7f0f01f1

    return v0
.end method

.method public isActive(III)Z
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/yelp/android/util/Holiday$7;->PRIDE_WEEKEND:Lcom/yelp/android/util/Holiday;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/util/Holiday;->isActive(III)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x7de

    if-ne p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    const/16 v0, 0xb

    if-gt p3, v0, :cond_1

    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    const/16 v0, 0xe

    if-ge p3, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

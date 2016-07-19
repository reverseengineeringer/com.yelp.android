.class final enum Lcom/yelp/android/util/Holiday$8;
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
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/util/Holiday;-><init>(Ljava/lang/String;ILcom/yelp/android/util/Holiday$1;)V

    return-void
.end method


# virtual methods
.method public getThemeResource()I
    .locals 1

    .prologue
    .line 112
    const v0, 0x7f090144

    return v0
.end method

.method public isActive(III)Z
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 104
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 105
    # invokes: Lcom/yelp/android/util/Holiday;->isPrideThemeAvailableForCountry()Z
    invoke-static {}, Lcom/yelp/android/util/Holiday;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/yelp/android/util/Holiday;->mPrideBegins:Ljava/util/Calendar;
    invoke-static {}, Lcom/yelp/android/util/Holiday;->access$400()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    # getter for: Lcom/yelp/android/util/Holiday;->mPrideEnds:Ljava/util/Calendar;
    invoke-static {}, Lcom/yelp/android/util/Holiday;->access$500()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class final enum Lcom/yelp/android/util/Holiday$5;
.super Lcom/yelp/android/util/Holiday;
.source "Holiday.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/util/Holiday;-><init>(Ljava/lang/String;ILcom/yelp/android/util/Holiday$1;)V

    return-void
.end method


# virtual methods
.method public getThemeResource()I
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f0f020b

    return v0
.end method

.method public isActive(III)Z
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 68
    # getter for: Lcom/yelp/android/util/Holiday;->mThanksgivingBegins:Ljava/util/Calendar;
    invoke-static {}, Lcom/yelp/android/util/Holiday;->access$100()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    # getter for: Lcom/yelp/android/util/Holiday;->mThanksgivingEnds:Ljava/util/Calendar;
    invoke-static {}, Lcom/yelp/android/util/Holiday;->access$200()Ljava/util/Calendar;

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

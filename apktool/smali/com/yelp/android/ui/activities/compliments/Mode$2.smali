.class final enum Lcom/yelp/android/ui/activities/compliments/Mode$2;
.super Lcom/yelp/android/ui/activities/compliments/Mode;
.source "Mode.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/compliments/Mode;-><init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/compliments/Mode$1;)V

    return-void
.end method


# virtual methods
.method public getLabelForState(Lcom/yelp/android/serializable/Compliment$ComplimentState;)I
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/yelp/android/ui/activities/compliments/f;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Compliment$ComplimentState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 59
    :pswitch_0
    const v0, 0x7f0700ba

    goto :goto_0

    .line 61
    :pswitch_1
    const v0, 0x7f0700bc

    goto :goto_0

    .line 63
    :pswitch_2
    const v0, 0x7f0700bb

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public makeActionRequest(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/Compliment;)Lcom/yelp/android/appdata/webrequests/av;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;",
            "Lcom/yelp/android/serializable/Compliment;",
            ")",
            "Lcom/yelp/android/appdata/webrequests/av;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/yelp/android/appdata/webrequests/aw;

    invoke-direct {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/aw;-><init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/Compliment;)V

    return-object v0
.end method

.method public makeLookupRequest(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;II)Lcom/yelp/android/appdata/webrequests/az;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/bb;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/yelp/android/appdata/webrequests/az;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bd;

    invoke-direct {v0, p1}, Lcom/yelp/android/appdata/webrequests/bd;-><init>(Lcom/yelp/android/appdata/webrequests/m;)V

    return-object v0
.end method

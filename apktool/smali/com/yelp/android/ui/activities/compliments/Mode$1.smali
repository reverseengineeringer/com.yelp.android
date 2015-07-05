.class final enum Lcom/yelp/android/ui/activities/compliments/Mode$1;
.super Lcom/yelp/android/ui/activities/compliments/Mode;
.source "Mode.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/compliments/Mode;-><init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/compliments/Mode$1;)V

    return-void
.end method


# virtual methods
.method public getLabelForState(Lcom/yelp/android/serializable/Compliment$ComplimentState;)I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
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
    .line 23
    const/4 v0, 0x0

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
    .line 29
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bc;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/yelp/android/appdata/webrequests/bc;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;II)V

    return-object v0
.end method

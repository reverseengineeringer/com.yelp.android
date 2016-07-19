.class final enum Lcom/yelp/android/ui/activities/compliments/Mode$3;
.super Lcom/yelp/android/ui/activities/compliments/Mode;
.source "Mode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/compliments/Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/compliments/Mode;-><init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/compliments/Mode$1;)V

    return-void
.end method


# virtual methods
.method public getLabelForState(Lcom/yelp/android/serializable/Compliment$ComplimentState;)I
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/yelp/android/ui/activities/compliments/Mode$4;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Compliment$ComplimentState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 102
    const v0, 0x7f070240

    return v0
.end method

.method public makeActionRequest(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/Compliment;)Lcom/yelp/android/appdata/webrequests/as;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;",
            "Lcom/yelp/android/serializable/Compliment;",
            ")",
            "Lcom/yelp/android/appdata/webrequests/as;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/yelp/android/appdata/webrequests/as$b;

    invoke-direct {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/as$b;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/Compliment;)V

    return-object v0
.end method

.method public makeLookupRequest(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;II)Lcom/yelp/android/appdata/webrequests/at;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/at$a;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/yelp/android/appdata/webrequests/at;"
        }
    .end annotation

    .prologue
    .line 92
    sget-object v0, Lcom/yelp/android/ui/activities/compliments/Mode$3;->APPROVE:Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/compliments/Mode;->makeLookupRequest(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;II)Lcom/yelp/android/appdata/webrequests/at;

    move-result-object v0

    return-object v0
.end method

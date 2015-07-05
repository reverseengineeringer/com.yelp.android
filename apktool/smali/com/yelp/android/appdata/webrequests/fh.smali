.class public Lcom/yelp/android/appdata/webrequests/fh;
.super Lcom/yelp/android/av/h;
.source "ReviewSuggestionRemove.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/av/i;)V
    .locals 2

    .prologue
    .line 8
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "reviews/suggestions/remove"

    invoke-direct {p0, v0, v1, p2}, Lcom/yelp/android/av/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 9
    const-string/jumbo v0, "business_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/fh;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.class public abstract Lcom/yelp/android/appdata/webrequests/eo;
.super Lcom/yelp/android/appdata/webrequests/h;
.source "ResultProgressApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/appdata/webrequests/h",
        "<",
        "Ljava/lang/Void;",
        "TProgress;TResult;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;Lcom/yelp/android/appdata/webrequests/ep;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/LocationService$Accuracies;",
            "Lcom/yelp/android/appdata/LocationService$Recentness;",
            "Lcom/yelp/android/appdata/LocationService$AccuracyUnit;",
            "Lcom/yelp/android/appdata/webrequests/ep",
            "<TProgress;TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/eo;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ep;

    .line 28
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 29
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ep;->a(Ljava/lang/Object;)V

    .line 31
    :cond_0
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/eo;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/eo;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/yelp/android/appdata/webrequests/m;->onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V

    .line 22
    :cond_0
    return-void
.end method

.class public abstract Lcom/yelp/android/appdata/webrequests/dq;
.super Lcom/yelp/android/appdata/webrequests/k;
.source "ResultProgressApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/dq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/appdata/webrequests/k",
        "<",
        "Ljava/lang/Void;",
        "TProgress;TResult;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;Lcom/yelp/android/appdata/webrequests/dq$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/LocationService$Accuracies;",
            "Lcom/yelp/android/appdata/LocationService$Recentness;",
            "Lcom/yelp/android/appdata/LocationService$AccuracyUnit;",
            "Lcom/yelp/android/appdata/webrequests/dq$a",
            "<TProgress;TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/k;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/k$b;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dq;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dq;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest$b;->onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V

    .line 26
    :cond_0
    return-void
.end method

.method protected varargs d([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dq;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dq$a;

    .line 33
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 34
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dq$a;->a(Ljava/lang/Object;)V

    .line 36
    :cond_0
    return-void
.end method

.class public Lcom/yelp/android/appdata/webrequests/db;
.super Lcom/yelp/android/appdata/webrequests/fy;
.source "LocationSuggestRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/appdata/webrequests/fy",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/location/Location;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 10
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v2, "suggest/locations"

    move-object v0, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/fy;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;Landroid/location/Location;Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "location"

    invoke-super {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/fy;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/db;->e:Ljava/lang/String;

    .line 13
    return-void
.end method

.class public Lcom/yelp/android/appdata/webrequests/fw;
.super Lcom/yelp/android/appdata/webrequests/fy;
.source "SearchSuggestRequest.java"


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
.method public constructor <init>(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 11
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v2, "suggest"

    move-object v0, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/fy;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;Landroid/location/Location;Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "term"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/fw;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/fw;->e:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    sget-object v0, Lcom/yelp/android/appdata/webrequests/fw;->a:Landroid/location/Location;

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/yelp/android/appdata/webrequests/fw;-><init>(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 18
    return-void
.end method

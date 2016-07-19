.class public Lcom/yelp/android/appdata/webrequests/dk;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "RemoveBookmarkRequest.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 2

    .prologue
    .line 11
    const-string/jumbo v0, "bookmarks/remove"

    invoke-direct {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 12
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/dk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dk;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 14
    return-void
.end method


# virtual methods
.method public b()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dk;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

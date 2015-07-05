.class public Lcom/yelp/android/appdata/webrequests/fv;
.super Ljava/lang/Object;
.source "SearchRequestBuilder.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/fv;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 16
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fv;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    return-object v0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/fv;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fv;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setFormatMode(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 45
    return-object p0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/fv;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fv;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setSearchMode(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 30
    return-object p0
.end method

.method public a(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/fv;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fv;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setCategory(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 20
    return-object p0
.end method

.method public a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/fv;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fv;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setFilter(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 40
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fv;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setTermNear(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 25
    return-object p0
.end method

.method public a(Ljava/util/EnumSet;)Lcom/yelp/android/appdata/webrequests/fv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;",
            ">;)",
            "Lcom/yelp/android/appdata/webrequests/fv;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fv;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setSearchOptions(Ljava/util/EnumSet;)V

    .line 60
    return-object p0
.end method

.method public a(Z)Lcom/yelp/android/appdata/webrequests/fv;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fv;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setUnFoldedResults(Z)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 55
    return-object p0
.end method

.method public a([D)Lcom/yelp/android/appdata/webrequests/fv;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fv;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setRegion([D)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 50
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fv;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setSearchTerms(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 35
    return-object p0
.end method

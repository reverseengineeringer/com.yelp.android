.class public Lcom/yelp/android/appdata/webrequests/eo;
.super Ljava/lang/Object;
.source "SearchRequestBuilder.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/eo;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 17
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/eo;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    new-instance v1, Lcom/yelp/android/serializable/Filter;

    invoke-direct {v1}, Lcom/yelp/android/serializable/Filter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/eo;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    return-object v0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/eo;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/eo;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 47
    return-object p0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/eo;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/eo;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 32
    return-object p0
.end method

.method public a(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/eo;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/eo;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 22
    return-object p0
.end method

.method public a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/eo;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/eo;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 42
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/eo;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->e(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 27
    return-object p0
.end method

.method public a(Z)Lcom/yelp/android/appdata/webrequests/eo;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/eo;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->b(Z)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 57
    return-object p0
.end method

.method public a([D)Lcom/yelp/android/appdata/webrequests/eo;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/eo;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a([D)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 52
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/eo;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->g(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 37
    return-object p0
.end method

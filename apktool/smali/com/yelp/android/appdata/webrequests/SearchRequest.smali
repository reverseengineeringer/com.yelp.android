.class public interface abstract Lcom/yelp/android/appdata/webrequests/SearchRequest;
.super Ljava/lang/Object;
.source "SearchRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract cancel(Z)V
.end method

.method public abstract copy()Lcom/yelp/android/appdata/webrequests/SearchRequest;
.end method

.method public abstract getCategory()Lcom/yelp/android/serializable/Category;
.end method

.method public abstract getFilter()Lcom/yelp/android/serializable/Filter;
.end method

.method public abstract getFormatMode()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;
.end method

.method public abstract getRegion()[D
.end method

.method public abstract getSearchMode()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;
.end method

.method public abstract getSearchOptions()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSearchTerms()Ljava/lang/String;
.end method

.method public abstract getTermNear()Ljava/lang/String;
.end method

.method public abstract getUrlString()Ljava/lang/String;
.end method

.method public abstract isCompleted()Z
.end method

.method public abstract isFetching()Z
.end method

.method public abstract prepareQuery()V
.end method

.method public abstract search()V
.end method

.method public abstract setCacheAdapter(Lcom/yelp/android/ax/a;)Lcom/yelp/android/appdata/webrequests/SearchRequest;
.end method

.method public abstract setCallback(Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/SearchRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
            ">;)",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest;"
        }
    .end annotation
.end method

.method public abstract setOffset(I)V
.end method

.method public abstract setSearchOptions(Ljava/util/EnumSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;",
            ">;)V"
        }
    .end annotation
.end method

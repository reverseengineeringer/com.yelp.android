.class public interface abstract Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;
.super Ljava/lang/Object;
.source "SearchRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract getAdBusinessSearchResults()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAmbiguousLocations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAttribution()Ljava/lang/String;
.end method

.method public abstract getBusinessSearchResults()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocalAds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SearchResultLocalAd;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocation()Landroid/location/Address;
.end method

.method public abstract getOffset()I
.end method

.method public abstract getPromotedFilter()Lcom/yelp/android/serializable/PromotedFilter;
.end method

.method public abstract getRegion()[D
.end method

.method public abstract getRequestId()Ljava/lang/String;
.end method

.method public abstract getSpellingSuggestion()Ljava/lang/String;
.end method

.method public abstract getSuggestedFilters()Lcom/yelp/android/serializable/AttributeFilters;
.end method

.method public abstract getTotal()I
.end method

.method public abstract isFolded()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;
.end method

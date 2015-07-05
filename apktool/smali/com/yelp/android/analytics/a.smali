.class public interface abstract Lcom/yelp/android/analytics/a;
.super Ljava/lang/Object;
.source "Analyticable.java"


# virtual methods
.method public abstract getComponentId()J
.end method

.method public abstract getIri()Lcom/yelp/android/analytics/iris/b;
.end method

.method public abstract getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestIdForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/lang/String;
.end method

.class public interface abstract Lcom/yelp/android/ui/activities/profile/reviews/a$c;
.super Ljava/lang/Object;
.source "UserReviewsContract.java"

# interfaces
.implements Lcom/yelp/android/bx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/reviews/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/yelp/android/serializable/YelpBusinessReview;)V
.end method

.method public abstract a(Lcom/yelp/android/serializable/YelpBusinessReview;I)V
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Lcom/yelp/android/serializable/YelpBusinessReview;)V
.end method

.method public abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract disableLoading()V
.end method

.method public abstract populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V
.end method

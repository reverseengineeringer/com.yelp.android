.class public interface abstract Lcom/yelp/android/ui/activities/badges/b$c;
.super Ljava/lang/Object;
.source "BadgesContract.java"

# interfaces
.implements Lcom/yelp/android/bx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/badges/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
.end method

.method public abstract a(Lcom/yelp/android/serializable/Badge;)V
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Badge;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

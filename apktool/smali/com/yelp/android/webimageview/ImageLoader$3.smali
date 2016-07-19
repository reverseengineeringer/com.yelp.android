.class final Lcom/yelp/android/webimageview/ImageLoader$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/webimageview/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/yelp/android/webimageview/ImageLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/yelp/android/webimageview/ImageLoader;Lcom/yelp/android/webimageview/ImageLoader;)I
    .locals 4

    .prologue
    .line 293
    # getter for: Lcom/yelp/android/webimageview/ImageLoader;->mPriority:J
    invoke-static {p1}, Lcom/yelp/android/webimageview/ImageLoader;->access$100(Lcom/yelp/android/webimageview/ImageLoader;)J

    move-result-wide v0

    # getter for: Lcom/yelp/android/webimageview/ImageLoader;->mPriority:J
    invoke-static {p2}, Lcom/yelp/android/webimageview/ImageLoader;->access$100(Lcom/yelp/android/webimageview/ImageLoader;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 290
    check-cast p1, Lcom/yelp/android/webimageview/ImageLoader;

    check-cast p2, Lcom/yelp/android/webimageview/ImageLoader;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/webimageview/ImageLoader$3;->compare(Lcom/yelp/android/webimageview/ImageLoader;Lcom/yelp/android/webimageview/ImageLoader;)I

    move-result v0

    return v0
.end method

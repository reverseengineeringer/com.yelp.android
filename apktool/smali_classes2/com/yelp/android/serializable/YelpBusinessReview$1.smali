.class Lcom/yelp/android/serializable/YelpBusinessReview$1;
.super Ljava/lang/Object;
.source "YelpBusinessReview.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/serializable/YelpBusinessReview;->Y()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/yelp/android/serializable/Media;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/YelpBusinessReview;


# direct methods
.method constructor <init>(Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusinessReview$1;->a:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Media;Lcom/yelp/android/serializable/Media;)I
    .locals 2

    .prologue
    .line 145
    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->h()Ljava/util/Date;

    move-result-object v0

    invoke-interface {p2}, Lcom/yelp/android/serializable/Media;->h()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 142
    check-cast p1, Lcom/yelp/android/serializable/Media;

    check-cast p2, Lcom/yelp/android/serializable/Media;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/serializable/YelpBusinessReview$1;->a(Lcom/yelp/android/serializable/Media;Lcom/yelp/android/serializable/Media;)I

    move-result v0

    return v0
.end method

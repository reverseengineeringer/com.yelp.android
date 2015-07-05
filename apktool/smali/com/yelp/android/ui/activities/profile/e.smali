.class Lcom/yelp/android/ui/activities/profile/e;
.super Ljava/lang/Object;
.source "ActivityFirstAwards.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/yelp/android/serializable/FeedEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/e;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/FeedEntry;Lcom/yelp/android/serializable/FeedEntry;)I
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p2}, Lcom/yelp/android/serializable/FeedEntry;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedEntry;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 288
    check-cast p1, Lcom/yelp/android/serializable/FeedEntry;

    check-cast p2, Lcom/yelp/android/serializable/FeedEntry;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/e;->a(Lcom/yelp/android/serializable/FeedEntry;Lcom/yelp/android/serializable/FeedEntry;)I

    move-result v0

    return v0
.end method

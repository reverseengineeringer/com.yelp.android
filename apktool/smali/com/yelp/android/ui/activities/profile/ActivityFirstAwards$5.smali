.class Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$5;
.super Ljava/lang/Object;
.source "ActivityFirstAwards.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;
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
        "Lcom/yelp/android/serializable/SingleFeedEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$5;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/SingleFeedEntry;Lcom/yelp/android/serializable/SingleFeedEntry;)I
    .locals 2

    .prologue
    .line 270
    invoke-interface {p2}, Lcom/yelp/android/serializable/SingleFeedEntry;->d()Ljava/util/Date;

    move-result-object v0

    invoke-interface {p1}, Lcom/yelp/android/serializable/SingleFeedEntry;->d()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 267
    check-cast p1, Lcom/yelp/android/serializable/SingleFeedEntry;

    check-cast p2, Lcom/yelp/android/serializable/SingleFeedEntry;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$5;->a(Lcom/yelp/android/serializable/SingleFeedEntry;Lcom/yelp/android/serializable/SingleFeedEntry;)I

    move-result v0

    return v0
.end method

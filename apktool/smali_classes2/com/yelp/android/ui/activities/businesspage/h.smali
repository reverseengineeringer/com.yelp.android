.class public abstract Lcom/yelp/android/ui/activities/businesspage/h;
.super Lcom/yelp/android/ui/activities/businesspage/g;
.source "HighlightedReservationInfo.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/BusinessSearchResult;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/ReservationSearchAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/ReservationSearchAction;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/g;-><init>(Lcom/yelp/android/serializable/SearchAction;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/h;->b:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/BusinessSearchResult;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/h;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 25
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/ReservationSearchAction;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/h;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public b()Lcom/yelp/android/serializable/BusinessSearchResult;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/h;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/ReservationSearchAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/h;->b:Ljava/util/List;

    return-object v0
.end method

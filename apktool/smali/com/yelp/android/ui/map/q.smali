.class public Lcom/yelp/android/ui/map/q;
.super Lcom/yelp/android/ui/map/j;
.source "SpecifiedNumberedIconMaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/serializable/by;",
        ">",
        "Lcom/yelp/android/ui/map/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/map/j;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lcom/yelp/android/ui/map/q;->a:Ljava/util/Map;

    .line 20
    return-void
.end method


# virtual methods
.method protected b(Lcom/yelp/android/serializable/by;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/map/q;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

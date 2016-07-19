.class public final Lcom/yelp/android/bu/a;
.super Ljava/lang/Object;
.source "DistributedCohortBucket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Random;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Random;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yelp/android/bu/a;->a:Ljava/util/List;

    .line 22
    iput-object p2, p0, Lcom/yelp/android/bu/a;->b:Ljava/util/Random;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/bu/a;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/yelp/android/bu/a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/yelp/android/bu/a;->b:Ljava/util/Random;

    iget-object v2, p0, Lcom/yelp/android/bu/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/bu/a;->c:Ljava/lang/Object;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/bu/a;->c:Ljava/lang/Object;

    return-object v0
.end method

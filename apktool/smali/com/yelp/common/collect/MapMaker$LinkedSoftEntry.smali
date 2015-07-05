.class Lcom/yelp/common/collect/MapMaker$LinkedSoftEntry;
.super Lcom/yelp/common/collect/MapMaker$SoftEntry;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/common/collect/MapMaker$SoftEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final next:Lcom/yelp/common/collect/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yelp/common/collect/c;Ljava/lang/Object;ILcom/yelp/common/collect/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/c",
            "<TK;TV;",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;>;TK;I",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 963
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/common/collect/MapMaker$SoftEntry;-><init>(Lcom/yelp/common/collect/c;Ljava/lang/Object;I)V

    .line 964
    iput-object p4, p0, Lcom/yelp/common/collect/MapMaker$LinkedSoftEntry;->next:Lcom/yelp/common/collect/f;

    .line 965
    return-void
.end method


# virtual methods
.method public getNext()Lcom/yelp/common/collect/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 971
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$LinkedSoftEntry;->next:Lcom/yelp/common/collect/f;

    return-object v0
.end method

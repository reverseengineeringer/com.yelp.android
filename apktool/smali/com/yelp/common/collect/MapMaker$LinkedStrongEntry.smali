.class Lcom/yelp/common/collect/MapMaker$LinkedStrongEntry;
.super Lcom/yelp/common/collect/MapMaker$StrongEntry;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkedStrongEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/common/collect/MapMaker$StrongEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final next:Lcom/yelp/common/collect/MapMaker$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yelp/common/collect/CustomConcurrentHashMap$b;Ljava/lang/Object;ILcom/yelp/common/collect/MapMaker$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/CustomConcurrentHashMap$b",
            "<TK;TV;",
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;>;TK;I",
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 902
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/common/collect/MapMaker$StrongEntry;-><init>(Lcom/yelp/common/collect/CustomConcurrentHashMap$b;Ljava/lang/Object;I)V

    .line 903
    iput-object p4, p0, Lcom/yelp/common/collect/MapMaker$LinkedStrongEntry;->next:Lcom/yelp/common/collect/MapMaker$a;

    .line 904
    return-void
.end method


# virtual methods
.method public getNext()Lcom/yelp/common/collect/MapMaker$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/common/collect/MapMaker$a",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 910
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$LinkedStrongEntry;->next:Lcom/yelp/common/collect/MapMaker$a;

    return-object v0
.end method

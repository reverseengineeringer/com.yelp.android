.class Lcom/yelp/common/collect/MapMaker$StrongEntry;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/yelp/common/collect/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/common/collect/f",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final internals:Lcom/yelp/common/collect/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/collect/c",
            "<TK;TV;",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field volatile valueReference:Lcom/yelp/common/collect/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/common/collect/g",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yelp/common/collect/c;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/c",
            "<TK;TV;",
            "Lcom/yelp/common/collect/f",
            "<TK;TV;>;>;TK;I)V"
        }
    .end annotation

    .prologue
    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    # invokes: Lcom/yelp/common/collect/MapMaker;->computing()Lcom/yelp/common/collect/g;
    invoke-static {}, Lcom/yelp/common/collect/MapMaker;->access$600()Lcom/yelp/common/collect/g;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrongEntry;->valueReference:Lcom/yelp/common/collect/g;

    .line 862
    iput-object p1, p0, Lcom/yelp/common/collect/MapMaker$StrongEntry;->internals:Lcom/yelp/common/collect/c;

    .line 863
    iput-object p2, p0, Lcom/yelp/common/collect/MapMaker$StrongEntry;->key:Ljava/lang/Object;

    .line 864
    iput p3, p0, Lcom/yelp/common/collect/MapMaker$StrongEntry;->hash:I

    .line 865
    return-void
.end method


# virtual methods
.method public getHash()I
    .locals 1

    .prologue
    .line 894
    iget v0, p0, Lcom/yelp/common/collect/MapMaker$StrongEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 868
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrongEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

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
    .line 890
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueReference()Lcom/yelp/common/collect/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/common/collect/g",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 878
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrongEntry;->valueReference:Lcom/yelp/common/collect/g;

    return-object v0
.end method

.method public setValueReference(Lcom/yelp/common/collect/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/common/collect/g",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 882
    iput-object p1, p0, Lcom/yelp/common/collect/MapMaker$StrongEntry;->valueReference:Lcom/yelp/common/collect/g;

    .line 883
    return-void
.end method

.method public valueReclaimed()V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/yelp/common/collect/MapMaker$StrongEntry;->internals:Lcom/yelp/common/collect/c;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/yelp/common/collect/c;->removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 887
    return-void
.end method

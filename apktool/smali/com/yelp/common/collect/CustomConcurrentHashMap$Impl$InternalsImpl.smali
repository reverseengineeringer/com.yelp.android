.class Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/yelp/common/collect/CustomConcurrentHashMap$b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalsImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/common/collect/CustomConcurrentHashMap$b",
        "<TK;TV;TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;)V
    .locals 0

    .prologue
    .line 667
    iput-object p1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntry(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TE;"
        }
    .end annotation

    .prologue
    .line 672
    if-nez p1, :cond_0

    .line 673
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0, p1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 676
    iget-object v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v1, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeEntry(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 688
    if-nez p1, :cond_0

    .line 689
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "entry"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/CustomConcurrentHashMap$c;

    invoke-interface {v0, p1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$c;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 692
    iget-object v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v1, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TV;)Z"
        }
    .end annotation

    .prologue
    .line 680
    if-nez p1, :cond_0

    .line 681
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "entry"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/yelp/common/collect/CustomConcurrentHashMap$c;

    invoke-interface {v0, p1}, Lcom/yelp/common/collect/CustomConcurrentHashMap$c;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 684
    iget-object v1, p0, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v1, v0}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/yelp/common/collect/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

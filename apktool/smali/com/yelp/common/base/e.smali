.class public abstract Lcom/yelp/common/base/e;
.super Ljava/lang/ref/SoftReference;
.source "FinalizableSoftReference.java"

# interfaces
.implements Lcom/yelp/common/base/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TT;>;",
        "Lcom/yelp/common/base/a;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcom/yelp/common/base/FinalizableReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yelp/common/base/FinalizableReferenceQueue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p2, Lcom/yelp/common/base/FinalizableReferenceQueue;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 40
    invoke-virtual {p2}, Lcom/yelp/common/base/FinalizableReferenceQueue;->cleanUp()V

    .line 41
    return-void
.end method

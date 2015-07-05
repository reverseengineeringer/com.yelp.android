.class Lcom/yelp/common/collect/MapMaker$QueueHolder;
.super Ljava/lang/Object;
.source "MapMaker.java"


# static fields
.field static final queue:Lcom/yelp/common/base/FinalizableReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 818
    new-instance v0, Lcom/yelp/common/base/FinalizableReferenceQueue;

    invoke-direct {v0}, Lcom/yelp/common/base/FinalizableReferenceQueue;-><init>()V

    sput-object v0, Lcom/yelp/common/collect/MapMaker$QueueHolder;->queue:Lcom/yelp/common/base/FinalizableReferenceQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

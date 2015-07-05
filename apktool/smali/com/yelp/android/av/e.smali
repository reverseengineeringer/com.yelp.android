.class public Lcom/yelp/android/av/e;
.super Ljava/lang/Object;
.source "MetricsManager.java"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    iput p1, p0, Lcom/yelp/android/av/e;->a:I

    .line 638
    iput-object p2, p0, Lcom/yelp/android/av/e;->b:Ljava/lang/String;

    .line 639
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lcom/yelp/android/av/e;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/yelp/android/av/e;->b:Ljava/lang/String;

    return-object v0
.end method

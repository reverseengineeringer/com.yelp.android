.class public Lcom/yelp/android/cs/e;
.super Ljava/lang/Object;
.source "RetryState.java"


# instance fields
.field private final a:I

.field private final b:Lcom/yelp/android/cs/a;

.field private final c:Lcom/yelp/android/cs/d;


# direct methods
.method public constructor <init>(ILcom/yelp/android/cs/a;Lcom/yelp/android/cs/d;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/yelp/android/cs/e;->a:I

    .line 31
    iput-object p2, p0, Lcom/yelp/android/cs/e;->b:Lcom/yelp/android/cs/a;

    .line 32
    iput-object p3, p0, Lcom/yelp/android/cs/e;->c:Lcom/yelp/android/cs/d;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/cs/a;Lcom/yelp/android/cs/d;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/yelp/android/cs/e;-><init>(ILcom/yelp/android/cs/a;Lcom/yelp/android/cs/d;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/cs/e;->b:Lcom/yelp/android/cs/a;

    iget v1, p0, Lcom/yelp/android/cs/e;->a:I

    invoke-interface {v0, v1}, Lcom/yelp/android/cs/a;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lcom/yelp/android/cs/e;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lcom/yelp/android/cs/e;

    iget v1, p0, Lcom/yelp/android/cs/e;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/yelp/android/cs/e;->b:Lcom/yelp/android/cs/a;

    iget-object v3, p0, Lcom/yelp/android/cs/e;->c:Lcom/yelp/android/cs/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/cs/e;-><init>(ILcom/yelp/android/cs/a;Lcom/yelp/android/cs/d;)V

    return-object v0
.end method

.method public c()Lcom/yelp/android/cs/e;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/yelp/android/cs/e;

    iget-object v1, p0, Lcom/yelp/android/cs/e;->b:Lcom/yelp/android/cs/a;

    iget-object v2, p0, Lcom/yelp/android/cs/e;->c:Lcom/yelp/android/cs/d;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/cs/e;-><init>(Lcom/yelp/android/cs/a;Lcom/yelp/android/cs/d;)V

    return-object v0
.end method

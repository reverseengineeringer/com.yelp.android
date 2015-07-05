.class Lcom/yelp/android/ap/d;
.super Ljava/lang/Object;
.source "CachedJobQueue.java"


# instance fields
.field a:Ljava/lang/Long;

.field b:Z


# direct methods
.method private constructor <init>(ZLjava/lang/Long;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/yelp/android/ap/d;->a:Ljava/lang/Long;

    .line 117
    iput-boolean p1, p0, Lcom/yelp/android/ap/d;->b:Z

    .line 118
    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/Long;Lcom/yelp/android/ap/b;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ap/d;-><init>(ZLjava/lang/Long;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ap/d;Z)Z
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/yelp/android/ap/d;->a(Z)Z

    move-result v0

    return v0
.end method

.method private a(Z)Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/yelp/android/ap/d;->b:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(ZLjava/lang/Long;)V
    .locals 0

    .prologue
    .line 125
    iput-object p2, p0, Lcom/yelp/android/ap/d;->a:Ljava/lang/Long;

    .line 126
    iput-boolean p1, p0, Lcom/yelp/android/ap/d;->b:Z

    .line 127
    return-void
.end method

.class public Lcom/yelp/android/ui/activities/nearby/e;
.super Ljava/lang/Object;
.source "NewTagManager.java"


# instance fields
.field private final a:Lcom/yelp/android/ui/activities/nearby/d;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/nearby/d;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/e;->a:Lcom/yelp/android/ui/activities/nearby/d;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/RichSearchSuggestion;)Z
    .locals 10

    .prologue
    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/e;->a:Lcom/yelp/android/ui/activities/nearby/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/nearby/d;->b(Lcom/yelp/android/serializable/RichSearchSuggestion;)Ljava/util/Date;

    move-result-object v0

    .line 32
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 35
    if-eqz v0, :cond_2

    .line 36
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 40
    :goto_0
    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    sub-long v4, v8, v4

    const-wide/16 v6, 0x1e

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    move v0, v1

    .line 43
    :goto_1
    iget-object v3, p0, Lcom/yelp/android/ui/activities/nearby/e;->a:Lcom/yelp/android/ui/activities/nearby/d;

    invoke-virtual {v3, p1}, Lcom/yelp/android/ui/activities/nearby/d;->a(Lcom/yelp/android/serializable/RichSearchSuggestion;)I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 40
    goto :goto_1

    :cond_1
    move v1, v2

    .line 43
    goto :goto_2

    :cond_2
    move-wide v4, v6

    goto :goto_0
.end method

.method public b(Lcom/yelp/android/serializable/RichSearchSuggestion;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/e;->a:Lcom/yelp/android/ui/activities/nearby/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/nearby/d;->c(Lcom/yelp/android/serializable/RichSearchSuggestion;)V

    .line 55
    return-void
.end method

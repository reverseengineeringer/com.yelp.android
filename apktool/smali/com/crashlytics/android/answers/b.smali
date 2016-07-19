.class Lcom/crashlytics/android/answers/b;
.super Ljava/lang/Object;
.source "AnswersRetryFilesSender.java"

# interfaces
.implements Lcom/yelp/android/ct/k;


# instance fields
.field private final a:Lcom/crashlytics/android/answers/l;

.field private final b:Lcom/crashlytics/android/answers/i;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/l;Lcom/crashlytics/android/answers/i;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/crashlytics/android/answers/b;->a:Lcom/crashlytics/android/answers/l;

    .line 42
    iput-object p2, p0, Lcom/crashlytics/android/answers/b;->b:Lcom/crashlytics/android/answers/i;

    .line 43
    return-void
.end method

.method public static a(Lcom/crashlytics/android/answers/l;)Lcom/crashlytics/android/answers/b;
    .locals 5

    .prologue
    .line 31
    new-instance v0, Lcom/crashlytics/android/answers/h;

    new-instance v1, Lcom/yelp/android/cs/c;

    const-wide/16 v2, 0x3e8

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/cs/c;-><init>(JI)V

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/answers/h;-><init>(Lcom/yelp/android/cs/a;D)V

    .line 33
    new-instance v1, Lcom/yelp/android/cs/b;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/yelp/android/cs/b;-><init>(I)V

    .line 34
    new-instance v2, Lcom/yelp/android/cs/e;

    invoke-direct {v2, v0, v1}, Lcom/yelp/android/cs/e;-><init>(Lcom/yelp/android/cs/a;Lcom/yelp/android/cs/d;)V

    .line 35
    new-instance v0, Lcom/crashlytics/android/answers/i;

    invoke-direct {v0, v2}, Lcom/crashlytics/android/answers/i;-><init>(Lcom/yelp/android/cs/e;)V

    .line 36
    new-instance v1, Lcom/crashlytics/android/answers/b;

    invoke-direct {v1, p0, v0}, Lcom/crashlytics/android/answers/b;-><init>(Lcom/crashlytics/android/answers/l;Lcom/crashlytics/android/answers/i;)V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 48
    iget-object v1, p0, Lcom/crashlytics/android/answers/b;->b:Lcom/crashlytics/android/answers/i;

    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/i;->a(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/crashlytics/android/answers/b;->a:Lcom/crashlytics/android/answers/l;

    invoke-virtual {v1, p1}, Lcom/crashlytics/android/answers/l;->a(Ljava/util/List;)Z

    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/crashlytics/android/answers/b;->b:Lcom/crashlytics/android/answers/i;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/i;->a()V

    .line 52
    const/4 v0, 0x1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/crashlytics/android/answers/b;->b:Lcom/crashlytics/android/answers/i;

    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/i;->b(J)V

    goto :goto_0
.end method

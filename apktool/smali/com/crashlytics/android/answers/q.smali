.class Lcom/crashlytics/android/answers/q;
.super Lcom/yelp/android/ct/e;
.source "SessionEventsHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ct/e",
        "<",
        "Lcom/crashlytics/android/answers/SessionEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yelp/android/ct/i;Lcom/crashlytics/android/answers/k;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/ct/i",
            "<",
            "Lcom/crashlytics/android/answers/SessionEvent;",
            ">;",
            "Lcom/crashlytics/android/answers/k;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/ct/e;-><init>(Landroid/content/Context;Lcom/yelp/android/ct/i;Lcom/yelp/android/ct/d;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 16
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/answers/q;)Lcom/yelp/android/ct/i;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/crashlytics/android/answers/q;->c:Lcom/yelp/android/ct/i;

    return-object v0
.end method


# virtual methods
.method protected a()Lcom/yelp/android/ct/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/ct/i",
            "<",
            "Lcom/crashlytics/android/answers/SessionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcom/crashlytics/android/answers/d;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/d;-><init>()V

    return-object v0
.end method

.method protected a(Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/crashlytics/android/answers/q$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/crashlytics/android/answers/q$1;-><init>(Lcom/crashlytics/android/answers/q;Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/yelp/android/ct/e;->b(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method

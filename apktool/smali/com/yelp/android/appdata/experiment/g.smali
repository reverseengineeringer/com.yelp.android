.class public Lcom/yelp/android/appdata/experiment/g;
.super Ljava/lang/Object;
.source "WebExperimentManager.java"


# static fields
.field private static a:Lcom/yelp/android/appdata/experiment/f;


# direct methods
.method public static a()Lcom/yelp/android/appdata/experiment/f;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/yelp/android/appdata/experiment/g;->a:Lcom/yelp/android/appdata/experiment/f;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Experiment.DATA should have been initialized by AppData!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/experiment/g;->a:Lcom/yelp/android/appdata/experiment/f;

    return-object v0
.end method

.method public static a(Lcom/yelp/android/appdata/experiment/f;)V
    .locals 0

    .prologue
    .line 19
    sput-object p0, Lcom/yelp/android/appdata/experiment/g;->a:Lcom/yelp/android/appdata/experiment/f;

    .line 20
    return-void
.end method

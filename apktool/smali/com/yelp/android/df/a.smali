.class public final Lcom/yelp/android/df/a;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/df/a$a;
    }
.end annotation


# direct methods
.method public static a()Lrx/d;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/yelp/android/de/a;->a()Lcom/yelp/android/de/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/de/a;->b()Lcom/yelp/android/de/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/de/b;->b()Lrx/d;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/df/a$a;->a:Lrx/d;

    goto :goto_0
.end method

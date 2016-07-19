.class public final Ljp/line/android/sdk/activity/a;
.super Ljava/lang/Object;


# direct methods
.method protected static final a()Lcom/yelp/android/cz/d;
    .locals 2

    invoke-static {}, Ljp/line/android/sdk/c;->a()Ljp/line/android/sdk/a;

    move-result-object v0

    invoke-interface {v0}, Ljp/line/android/sdk/a;->c()Ljp/line/android/sdk/login/a;

    move-result-object v0

    instance-of v1, v0, Lcom/yelp/android/cz/b;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "AuthManager instance was not jp.line.android.sdk.login.impl.LineAuthManagerImpl."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lcom/yelp/android/cz/b;

    invoke-virtual {v0}, Lcom/yelp/android/cz/b;->b()Ljp/line/android/sdk/login/LineLoginFuture;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/yelp/android/cz/d;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "LoginFuture instance was not jp.line.android.sdk.login.impl.LineLoginFutureImpl."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/yelp/android/cz/d;

    return-object v0
.end method

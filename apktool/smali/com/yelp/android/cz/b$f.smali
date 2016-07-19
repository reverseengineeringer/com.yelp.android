.class final Lcom/yelp/android/cz/b$f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/cz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/yelp/android/cz/d;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/yelp/android/cz/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yelp/android/cz/b$f;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/yelp/android/cz/b$f;->b:Lcom/yelp/android/cz/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/yelp/android/cz/b$f;->b:Lcom/yelp/android/cz/d;

    invoke-virtual {v0}, Lcom/yelp/android/cz/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yelp/android/cv/a;->a()Lcom/yelp/android/cv/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/cv/a;->b()Lcom/yelp/android/db/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yelp/android/cz/b$f;->b:Lcom/yelp/android/cz/d;

    invoke-virtual {v1, v0}, Lcom/yelp/android/cz/d;->a(Lcom/yelp/android/db/a;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/cz/b$f;->a:Landroid/app/Activity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/cz/b$f;->b:Lcom/yelp/android/cz/d;

    invoke-virtual {v0}, Lcom/yelp/android/cz/d;->d()Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    move-result-object v0

    iget v0, v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    sget-object v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->GOT_REQUEST_TOKEN:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    iget v1, v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/yelp/android/cz/b$f;->b:Lcom/yelp/android/cz/d;

    new-instance v1, Ljp/line/android/sdk/exception/LineSdkLoginException;

    sget-object v2, Ljp/line/android/sdk/exception/LineSdkLoginError;->FAILED_START_LOGIN_ACTIVITY:Ljp/line/android/sdk/exception/LineSdkLoginError;

    const-string/jumbo v3, "activity is null"

    invoke-direct {v1, v2, v3}, Ljp/line/android/sdk/exception/LineSdkLoginException;-><init>(Ljp/line/android/sdk/exception/LineSdkLoginError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/cz/d;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yelp/android/cz/b$f;->b:Lcom/yelp/android/cz/d;

    iget-object v1, p0, Lcom/yelp/android/cz/b$f;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/yelp/android/cz/b;->a(Lcom/yelp/android/cz/d;Landroid/app/Activity;)V

    goto :goto_0
.end method

.class synthetic Lcom/yelp/android/ck/e$7;
.super Ljava/lang/Object;
.source "OnLineSettingChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ck/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 132
    invoke-static {}, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->values()[Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yelp/android/ck/e$7;->b:[I

    :try_start_0
    sget-object v0, Lcom/yelp/android/ck/e$7;->b:[I

    sget-object v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->SUCCESS:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    invoke-virtual {v1}, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/yelp/android/ck/e$7;->b:[I

    sget-object v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->CANCELED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    invoke-virtual {v1}, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :goto_1
    invoke-static {}, Ljp/line/android/sdk/api/FutureStatus;->values()[Ljp/line/android/sdk/api/FutureStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yelp/android/ck/e$7;->a:[I

    :try_start_2
    sget-object v0, Lcom/yelp/android/ck/e$7;->a:[I

    sget-object v1, Ljp/line/android/sdk/api/FutureStatus;->SUCCESS:Ljp/line/android/sdk/api/FutureStatus;

    invoke-virtual {v1}, Ljp/line/android/sdk/api/FutureStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    .line 132
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

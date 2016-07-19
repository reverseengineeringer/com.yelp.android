.class final synthetic Lcom/yelp/android/cv/b$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/cv/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljp/line/android/sdk/Phase;->values()[Ljp/line/android/sdk/Phase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yelp/android/cv/b$1;->a:[I

    :try_start_0
    sget-object v0, Lcom/yelp/android/cv/b$1;->a:[I

    sget-object v1, Ljp/line/android/sdk/Phase;->REAL:Ljp/line/android/sdk/Phase;

    invoke-virtual {v1}, Ljp/line/android/sdk/Phase;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

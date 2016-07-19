.class public Lcom/yelp/android/da/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/yelp/android/da/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/yelp/android/da/a;
    .locals 2

    sget-object v0, Lcom/yelp/android/da/b;->a:Lcom/yelp/android/da/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/yelp/android/da/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yelp/android/da/b;->a:Lcom/yelp/android/da/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yelp/android/cy/b;

    invoke-direct {v0}, Lcom/yelp/android/cy/b;-><init>()V

    sput-object v0, Lcom/yelp/android/da/b;->a:Lcom/yelp/android/da/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/yelp/android/da/b;->a:Lcom/yelp/android/da/a;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

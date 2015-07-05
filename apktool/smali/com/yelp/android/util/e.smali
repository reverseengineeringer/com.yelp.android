.class Lcom/yelp/android/util/e;
.super Ljava/lang/Object;
.source "ContactsFetcher.java"


# static fields
.field private static final a:Lcom/yelp/android/util/ContactsFetcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/yelp/android/util/EclairFetcher;

    invoke-direct {v0}, Lcom/yelp/android/util/EclairFetcher;-><init>()V

    sput-object v0, Lcom/yelp/android/util/e;->a:Lcom/yelp/android/util/ContactsFetcher;

    .line 163
    return-void
.end method

.method static synthetic a()Lcom/yelp/android/util/ContactsFetcher;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/yelp/android/util/e;->a:Lcom/yelp/android/util/ContactsFetcher;

    return-object v0
.end method

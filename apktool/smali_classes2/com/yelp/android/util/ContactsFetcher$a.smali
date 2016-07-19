.class Lcom/yelp/android/util/ContactsFetcher$a;
.super Ljava/lang/Object;
.source "ContactsFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/util/ContactsFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/yelp/android/util/ContactsFetcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/yelp/android/util/EclairFetcher;

    invoke-direct {v0}, Lcom/yelp/android/util/EclairFetcher;-><init>()V

    sput-object v0, Lcom/yelp/android/util/ContactsFetcher$a;->a:Lcom/yelp/android/util/ContactsFetcher;

    .line 166
    return-void
.end method

.method static synthetic a()Lcom/yelp/android/util/ContactsFetcher;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/yelp/android/util/ContactsFetcher$a;->a:Lcom/yelp/android/util/ContactsFetcher;

    return-object v0
.end method

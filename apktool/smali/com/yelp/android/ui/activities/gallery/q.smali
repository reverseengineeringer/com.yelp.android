.class public Lcom/yelp/android/ui/activities/gallery/q;
.super Ljava/lang/Object;
.source "MediaBucketAdapter.java"


# static fields
.field public static a:Lcom/yelp/android/ui/activities/gallery/q;

.field public static b:Lcom/yelp/android/ui/activities/gallery/q;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    sget v0, Lcom/yelp/android/bf/k;->all_albums:I

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/gallery/q;->a(Ljava/lang/String;I)Lcom/yelp/android/ui/activities/gallery/q;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/activities/gallery/q;->a:Lcom/yelp/android/ui/activities/gallery/q;

    .line 34
    sget v0, Lcom/yelp/android/bf/k;->choose_source_ellipsis:I

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/gallery/q;->a(Ljava/lang/String;I)Lcom/yelp/android/ui/activities/gallery/q;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/activities/gallery/q;->b:Lcom/yelp/android/ui/activities/gallery/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/String;I)Lcom/yelp/android/ui/activities/gallery/q;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/q;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/gallery/q;-><init>()V

    .line 52
    iput-object p0, v0, Lcom/yelp/android/ui/activities/gallery/q;->c:Ljava/lang/String;

    .line 53
    iput p1, v0, Lcom/yelp/android/ui/activities/gallery/q;->e:I

    .line 54
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/gallery/q;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/q;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/gallery/q;-><init>()V

    .line 45
    iput-object p0, v0, Lcom/yelp/android/ui/activities/gallery/q;->c:Ljava/lang/String;

    .line 46
    iput-object p1, v0, Lcom/yelp/android/ui/activities/gallery/q;->d:Ljava/lang/String;

    .line 47
    return-object v0
.end method

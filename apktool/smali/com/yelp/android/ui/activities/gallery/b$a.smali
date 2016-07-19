.class public Lcom/yelp/android/ui/activities/gallery/b$a;
.super Ljava/lang/Object;
.source "MediaBucketAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/gallery/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/yelp/android/ui/activities/gallery/b$a;

.field public static b:Lcom/yelp/android/ui/activities/gallery/b$a;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    sget v0, Lcom/yelp/android/co/a$j;->all_albums:I

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/gallery/b$a;->a(Ljava/lang/String;I)Lcom/yelp/android/ui/activities/gallery/b$a;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/activities/gallery/b$a;->a:Lcom/yelp/android/ui/activities/gallery/b$a;

    .line 35
    sget v0, Lcom/yelp/android/co/a$j;->choose_source_ellipsis:I

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/gallery/b$a;->a(Ljava/lang/String;I)Lcom/yelp/android/ui/activities/gallery/b$a;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/activities/gallery/b$a;->b:Lcom/yelp/android/ui/activities/gallery/b$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)Lcom/yelp/android/ui/activities/gallery/b$a;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/b$a;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/gallery/b$a;-><init>()V

    .line 53
    iput-object p0, v0, Lcom/yelp/android/ui/activities/gallery/b$a;->c:Ljava/lang/String;

    .line 54
    iput p1, v0, Lcom/yelp/android/ui/activities/gallery/b$a;->e:I

    .line 55
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/gallery/b$a;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/yelp/android/ui/activities/gallery/b$a;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/gallery/b$a;-><init>()V

    .line 46
    iput-object p0, v0, Lcom/yelp/android/ui/activities/gallery/b$a;->c:Ljava/lang/String;

    .line 47
    iput-object p1, v0, Lcom/yelp/android/ui/activities/gallery/b$a;->d:Ljava/lang/String;

    .line 48
    return-object v0
.end method

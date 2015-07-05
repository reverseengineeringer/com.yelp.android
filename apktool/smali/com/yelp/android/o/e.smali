.class public final Lcom/yelp/android/o/e;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/o/a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[J

.field private final e:[Ljava/io/File;


# direct methods
.method private constructor <init>(Lcom/yelp/android/o/a;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 1

    .prologue
    .line 672
    iput-object p1, p0, Lcom/yelp/android/o/e;->a:Lcom/yelp/android/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    iput-object p2, p0, Lcom/yelp/android/o/e;->b:Ljava/lang/String;

    .line 674
    iput-wide p3, p0, Lcom/yelp/android/o/e;->c:J

    .line 675
    iput-object p5, p0, Lcom/yelp/android/o/e;->e:[Ljava/io/File;

    .line 676
    iput-object p6, p0, Lcom/yelp/android/o/e;->d:[J

    .line 677
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/o/a;Ljava/lang/String;J[Ljava/io/File;[JLcom/yelp/android/o/b;)V
    .locals 1

    .prologue
    .line 666
    invoke-direct/range {p0 .. p6}, Lcom/yelp/android/o/e;-><init>(Lcom/yelp/android/o/a;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/yelp/android/o/e;->e:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

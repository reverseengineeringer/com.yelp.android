.class public Lcom/yelp/android/util/j$a;
.super Ljava/lang/Object;
.source "MultipartEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/util/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:[B

.field public final d:Ljava/io/InputStream;

.field public final e:J


# direct methods
.method public constructor <init>([B[B[BLjava/io/InputStream;J)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/yelp/android/util/j$a;->a:[B

    .line 49
    iput-object p2, p0, Lcom/yelp/android/util/j$a;->b:[B

    .line 50
    iput-object p3, p0, Lcom/yelp/android/util/j$a;->c:[B

    .line 51
    iput-object p4, p0, Lcom/yelp/android/util/j$a;->d:Ljava/io/InputStream;

    .line 52
    iput-wide p5, p0, Lcom/yelp/android/util/j$a;->e:J

    .line 53
    return-void
.end method

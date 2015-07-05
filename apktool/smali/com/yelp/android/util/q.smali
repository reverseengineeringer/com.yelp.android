.class public Lcom/yelp/android/util/q;
.super Ljava/lang/Object;
.source "MultipartEntity.java"


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
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/yelp/android/util/q;->a:[B

    .line 48
    iput-object p2, p0, Lcom/yelp/android/util/q;->b:[B

    .line 49
    iput-object p3, p0, Lcom/yelp/android/util/q;->c:[B

    .line 50
    iput-object p4, p0, Lcom/yelp/android/util/q;->d:Ljava/io/InputStream;

    .line 51
    iput-wide p5, p0, Lcom/yelp/android/util/q;->e:J

    .line 52
    return-void
.end method

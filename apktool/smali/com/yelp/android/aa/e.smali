.class public Lcom/yelp/android/aa/e;
.super Ljava/lang/Object;
.source "StreamFileDataLoadProvider.java"

# interfaces
.implements Lcom/yelp/android/ae/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ae/b",
        "<",
        "Ljava/io/InputStream;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/yelp/android/aa/g;


# instance fields
.field private final b:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/yelp/android/aa/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/aa/g;-><init>(Lcom/yelp/android/aa/f;)V

    sput-object v0, Lcom/yelp/android/aa/e;->a:Lcom/yelp/android/aa/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/yelp/android/aa/a;

    invoke-direct {v0}, Lcom/yelp/android/aa/a;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/aa/e;->b:Lcom/bumptech/glide/load/d;

    .line 26
    new-instance v0, Lcom/yelp/android/v/p;

    invoke-direct {v0}, Lcom/yelp/android/v/p;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/aa/e;->c:Lcom/bumptech/glide/load/a;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/aa/e;->b:Lcom/bumptech/glide/load/d;

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/load/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/yelp/android/aa/e;->a:Lcom/yelp/android/aa/g;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/a",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/aa/e;->c:Lcom/bumptech/glide/load/a;

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/yelp/android/y/b;->b()Lcom/yelp/android/y/b;

    move-result-object v0

    return-object v0
.end method

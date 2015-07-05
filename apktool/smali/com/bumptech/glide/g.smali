.class public Lcom/bumptech/glide/g;
.super Lcom/bumptech/glide/e;
.source "GenericTranscodeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/e",
        "<TModelType;TDataType;TResourceType;TResourceType;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/yelp/android/v/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/v/m",
            "<TModelType;TDataType;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TResourceType;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/bumptech/glide/o;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/h;Ljava/lang/Class;Lcom/yelp/android/v/m;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/o;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/h;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/yelp/android/v/m",
            "<TModelType;TDataType;>;",
            "Ljava/lang/Class",
            "<TDataType;>;",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Lcom/bumptech/glide/manager/l;",
            "Lcom/bumptech/glide/manager/h;",
            "Lcom/bumptech/glide/o;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/yelp/android/ad/e;->b()Lcom/yelp/android/ad/c;

    move-result-object v1

    invoke-static {p2, p4, p5, p6, v1}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/h;Lcom/yelp/android/v/m;Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/ad/c;)Lcom/yelp/android/ae/f;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p6

    move-object v6, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/yelp/android/ae/f;Ljava/lang/Class;Lcom/bumptech/glide/h;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/h;)V

    .line 62
    iput-object p4, p0, Lcom/bumptech/glide/g;->g:Lcom/yelp/android/v/m;

    .line 63
    iput-object p5, p0, Lcom/bumptech/glide/g;->h:Ljava/lang/Class;

    .line 64
    iput-object p6, p0, Lcom/bumptech/glide/g;->i:Ljava/lang/Class;

    .line 65
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/o;

    .line 66
    return-void
.end method

.method private static a(Lcom/bumptech/glide/h;Lcom/yelp/android/v/m;Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/ad/c;)Lcom/yelp/android/ae/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/h;",
            "Lcom/yelp/android/v/m",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Lcom/yelp/android/ad/c",
            "<TZ;TR;>;)",
            "Lcom/yelp/android/ae/f",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/yelp/android/ae/b;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/yelp/android/ae/e;

    invoke-direct {v1, p1, p4, v0}, Lcom/yelp/android/ae/e;-><init>(Lcom/yelp/android/v/m;Lcom/yelp/android/ad/c;Lcom/yelp/android/ae/b;)V

    return-object v1
.end method

.class public Lcom/bumptech/glide/e;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TModelType;>;"
        }
    .end annotation
.end field

.field protected final b:Landroid/content/Context;

.field protected final c:Lcom/bumptech/glide/h;

.field protected final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final e:Lcom/bumptech/glide/manager/l;

.field protected final f:Lcom/bumptech/glide/manager/h;

.field private g:Lcom/yelp/android/ae/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ae/a",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field private i:Lcom/bumptech/glide/load/b;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Lcom/bumptech/glide/request/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/c",
            "<-TModelType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Float;

.field private o:Lcom/bumptech/glide/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e",
            "<***TTranscodeType;>;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Float;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Lcom/bumptech/glide/Priority;

.field private t:Z

.field private u:Lcom/yelp/android/af/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/af/g",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private v:I

.field private w:I

.field private x:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private y:Lcom/bumptech/glide/load/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f",
            "<TResourceType;>;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/yelp/android/ae/f;Ljava/lang/Class;Lcom/bumptech/glide/h;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/yelp/android/ae/f",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/h;",
            "Lcom/bumptech/glide/manager/l;",
            "Lcom/bumptech/glide/manager/h;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/yelp/android/ah/b;->a()Lcom/yelp/android/ah/b;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/e;->i:Lcom/bumptech/glide/load/b;

    .line 68
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/e;->p:Ljava/lang/Float;

    .line 71
    iput-object v0, p0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/Priority;

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/e;->t:Z

    .line 73
    invoke-static {}, Lcom/yelp/android/af/h;->a()Lcom/yelp/android/af/g;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/e;->u:Lcom/yelp/android/af/g;

    .line 74
    iput v2, p0, Lcom/bumptech/glide/e;->v:I

    .line 75
    iput v2, p0, Lcom/bumptech/glide/e;->w:I

    .line 76
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v1, p0, Lcom/bumptech/glide/e;->x:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 77
    invoke-static {}, Lcom/yelp/android/y/d;->b()Lcom/yelp/android/y/d;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/e;->y:Lcom/bumptech/glide/load/f;

    .line 94
    iput-object p1, p0, Lcom/bumptech/glide/e;->b:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/bumptech/glide/e;->a:Ljava/lang/Class;

    .line 96
    iput-object p4, p0, Lcom/bumptech/glide/e;->d:Ljava/lang/Class;

    .line 97
    iput-object p5, p0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/h;

    .line 98
    iput-object p6, p0, Lcom/bumptech/glide/e;->e:Lcom/bumptech/glide/manager/l;

    .line 99
    iput-object p7, p0, Lcom/bumptech/glide/e;->f:Lcom/bumptech/glide/manager/h;

    .line 100
    if-eqz p3, :cond_0

    new-instance v0, Lcom/yelp/android/ae/a;

    invoke-direct {v0, p3}, Lcom/yelp/android/ae/a;-><init>(Lcom/yelp/android/ae/f;)V

    :cond_0
    iput-object v0, p0, Lcom/bumptech/glide/e;->g:Lcom/yelp/android/ae/a;

    .line 103
    if-nez p1, :cond_1

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "LoadProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_2
    return-void
.end method

.method constructor <init>(Lcom/yelp/android/ae/f;Ljava/lang/Class;Lcom/bumptech/glide/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ae/f",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/e",
            "<TModelType;***>;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p3, Lcom/bumptech/glide/e;->b:Landroid/content/Context;

    iget-object v2, p3, Lcom/bumptech/glide/e;->a:Ljava/lang/Class;

    iget-object v5, p3, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/h;

    iget-object v6, p3, Lcom/bumptech/glide/e;->e:Lcom/bumptech/glide/manager/l;

    iget-object v7, p3, Lcom/bumptech/glide/e;->f:Lcom/bumptech/glide/manager/h;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/yelp/android/ae/f;Ljava/lang/Class;Lcom/bumptech/glide/h;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/h;)V

    .line 84
    iget-object v0, p3, Lcom/bumptech/glide/e;->h:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bumptech/glide/e;->h:Ljava/lang/Object;

    .line 85
    iget-boolean v0, p3, Lcom/bumptech/glide/e;->j:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/e;->j:Z

    .line 86
    iget-object v0, p3, Lcom/bumptech/glide/e;->i:Lcom/bumptech/glide/load/b;

    iput-object v0, p0, Lcom/bumptech/glide/e;->i:Lcom/bumptech/glide/load/b;

    .line 87
    iget-object v0, p3, Lcom/bumptech/glide/e;->x:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v0, p0, Lcom/bumptech/glide/e;->x:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 88
    iget-boolean v0, p3, Lcom/bumptech/glide/e;->t:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/e;->t:Z

    .line 89
    return-void
.end method

.method private a()Lcom/bumptech/glide/Priority;
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/Priority;

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    if-ne v0, v1, :cond_0

    .line 710
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    .line 716
    :goto_0
    return-object v0

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/Priority;

    sget-object v1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    if-ne v0, v1, :cond_1

    .line 712
    sget-object v0, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    goto :goto_0

    .line 714
    :cond_1
    sget-object v0, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/ag/j;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/b;)Lcom/bumptech/glide/request/a;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ag/j",
            "<TTranscodeType;>;F",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/b;",
            ")",
            "Lcom/bumptech/glide/request/a;"
        }
    .end annotation

    .prologue
    .line 758
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/e;->g:Lcom/yelp/android/ae/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/e;->h:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/e;->i:Lcom/bumptech/glide/load/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/e;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/e;->q:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/bumptech/glide/e;->k:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/e;->r:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/bumptech/glide/e;->l:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bumptech/glide/e;->m:Lcom/bumptech/glide/request/c;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/h;

    invoke-virtual {v5}, Lcom/bumptech/glide/h;->b()Lcom/bumptech/glide/load/engine/d;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bumptech/glide/e;->y:Lcom/bumptech/glide/load/f;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/e;->d:Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bumptech/glide/e;->t:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/e;->u:Lcom/yelp/android/af/g;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/e;->w:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/e;->v:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/e;->x:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object/from16 v21, v0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v13, p4

    invoke-static/range {v1 .. v21}, Lcom/bumptech/glide/request/GenericRequest;->a(Lcom/yelp/android/ae/f;Ljava/lang/Object;Lcom/bumptech/glide/load/b;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/yelp/android/ag/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/b;Lcom/bumptech/glide/load/engine/d;Lcom/bumptech/glide/load/f;Ljava/lang/Class;ZLcom/yelp/android/af/g;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/GenericRequest;

    move-result-object v1

    return-object v1
.end method

.method private a(Lcom/yelp/android/ag/j;Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ag/j",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/e;",
            ")",
            "Lcom/bumptech/glide/request/a;"
        }
    .end annotation

    .prologue
    .line 727
    iget-object v0, p0, Lcom/bumptech/glide/e;->o:Lcom/bumptech/glide/e;

    if-eqz v0, :cond_2

    .line 729
    iget-object v0, p0, Lcom/bumptech/glide/e;->o:Lcom/bumptech/glide/e;

    iget-object v0, v0, Lcom/bumptech/glide/e;->u:Lcom/yelp/android/af/g;

    invoke-static {}, Lcom/yelp/android/af/h;->a()Lcom/yelp/android/af/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/bumptech/glide/e;->o:Lcom/bumptech/glide/e;

    iget-object v1, p0, Lcom/bumptech/glide/e;->u:Lcom/yelp/android/af/g;

    iput-object v1, v0, Lcom/bumptech/glide/e;->u:Lcom/yelp/android/af/g;

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e;->o:Lcom/bumptech/glide/e;

    iget-object v0, v0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/Priority;

    if-nez v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/bumptech/glide/e;->o:Lcom/bumptech/glide/e;

    invoke-direct {p0}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/Priority;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/Priority;

    .line 737
    :cond_1
    new-instance v0, Lcom/bumptech/glide/request/e;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/request/e;-><init>(Lcom/bumptech/glide/request/b;)V

    .line 738
    iget-object v1, p0, Lcom/bumptech/glide/e;->p:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/bumptech/glide/e;->a(Lcom/yelp/android/ag/j;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/b;)Lcom/bumptech/glide/request/a;

    move-result-object v1

    .line 740
    iget-object v2, p0, Lcom/bumptech/glide/e;->o:Lcom/bumptech/glide/e;

    invoke-direct {v2, p1, v0}, Lcom/bumptech/glide/e;->a(Lcom/yelp/android/ag/j;Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/a;

    move-result-object v2

    .line 741
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/a;)V

    .line 752
    :goto_0
    return-object v0

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/e;->n:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 745
    new-instance v0, Lcom/bumptech/glide/request/e;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/request/e;-><init>(Lcom/bumptech/glide/request/b;)V

    .line 746
    iget-object v1, p0, Lcom/bumptech/glide/e;->p:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/bumptech/glide/e;->a(Lcom/yelp/android/ag/j;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/b;)Lcom/bumptech/glide/request/a;

    move-result-object v1

    .line 747
    iget-object v2, p0, Lcom/bumptech/glide/e;->n:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/Priority;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/bumptech/glide/e;->a(Lcom/yelp/android/ag/j;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/b;)Lcom/bumptech/glide/request/a;

    move-result-object v2

    .line 748
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/a;)V

    goto :goto_0

    .line 752
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/e;->p:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/bumptech/glide/e;->a(Lcom/yelp/android/ag/j;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/b;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/yelp/android/ag/j;)Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ag/j",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/request/a;"
        }
    .end annotation

    .prologue
    .line 720
    iget-object v0, p0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/Priority;

    if-nez v0, :cond_0

    .line 721
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/Priority;

    .line 723
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/e;->a(Lcom/yelp/android/ag/j;Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lcom/yelp/android/af/g;)Lcom/bumptech/glide/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/af/g",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 410
    if-nez p1, :cond_0

    .line 411
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Animation factory must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/e;->u:Lcom/yelp/android/af/g;

    .line 415
    return-object p0
.end method

.method public a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/yelp/android/ag/j",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 629
    invoke-static {}, Lcom/yelp/android/ai/f;->a()V

    .line 630
    if-nez p1, :cond_0

    .line 631
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must pass in a non null View"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/e;->z:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 635
    sget-object v0, Lcom/bumptech/glide/f;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 651
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/h;

    iget-object v1, p0, Lcom/bumptech/glide/e;->d:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/h;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/yelp/android/ag/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/e;->a(Lcom/yelp/android/ag/j;)Lcom/yelp/android/ag/j;

    move-result-object v0

    return-object v0

    .line 637
    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/e;->f()V

    goto :goto_0

    .line 642
    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/e;->e()V

    goto :goto_0

    .line 635
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/yelp/android/ag/j;)Lcom/yelp/android/ag/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/yelp/android/ag/j",
            "<TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .prologue
    .line 595
    invoke-static {}, Lcom/yelp/android/ai/f;->a()V

    .line 596
    if-nez p1, :cond_0

    .line 597
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must pass in a non null Target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/e;->j:Z

    if-nez v0, :cond_1

    .line 600
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must first set a model (try #load())"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_1
    invoke-interface {p1}, Lcom/yelp/android/ag/j;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    .line 605
    if-eqz v0, :cond_2

    .line 606
    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->d()V

    .line 607
    iget-object v1, p0, Lcom/bumptech/glide/e;->e:Lcom/bumptech/glide/manager/l;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/manager/l;->b(Lcom/bumptech/glide/request/a;)V

    .line 608
    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->a()V

    .line 611
    :cond_2
    invoke-direct {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/yelp/android/ag/j;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    .line 612
    invoke-interface {p1, v0}, Lcom/yelp/android/ag/j;->a(Lcom/bumptech/glide/request/a;)V

    .line 613
    iget-object v1, p0, Lcom/bumptech/glide/e;->f:Lcom/bumptech/glide/manager/h;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/manager/h;->a(Lcom/bumptech/glide/manager/i;)V

    .line 614
    iget-object v1, p0, Lcom/bumptech/glide/e;->e:Lcom/bumptech/glide/manager/l;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/manager/l;->a(Lcom/bumptech/glide/request/a;)V

    .line 616
    return-object p1
.end method

.method public b(II)Lcom/bumptech/glide/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 513
    if-gtz p1, :cond_0

    .line 514
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Width must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_0
    if-gtz p2, :cond_1

    .line 517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_1
    iput p1, p0, Lcom/bumptech/glide/e;->w:I

    .line 520
    iput p2, p0, Lcom/bumptech/glide/e;->v:I

    .line 522
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a",
            "<TDataType;>;)",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/bumptech/glide/e;->g:Lcom/yelp/android/ae/a;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/bumptech/glide/e;->g:Lcom/yelp/android/ae/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ae/a;->a(Lcom/bumptech/glide/load/a;)V

    .line 243
    :cond_0
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            ")",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 540
    if-nez p1, :cond_0

    .line 541
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Signature must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/e;->i:Lcom/bumptech/glide/load/b;

    .line 544
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<TDataType;TResourceType;>;)",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/bumptech/glide/e;->g:Lcom/yelp/android/ae/a;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/bumptech/glide/e;->g:Lcom/yelp/android/ae/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ae/a;->a(Lcom/bumptech/glide/load/d;)V

    .line 204
    :cond_0
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 264
    iput-object p1, p0, Lcom/bumptech/glide/e;->x:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 266
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/request/c;)Lcom/bumptech/glide/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/c",
            "<-TModelType;TTranscodeType;>;)",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 481
    iput-object p1, p0, Lcom/bumptech/glide/e;->m:Lcom/bumptech/glide/request/c;

    .line 483
    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/bumptech/glide/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 559
    iput-object p1, p0, Lcom/bumptech/glide/e;->h:Ljava/lang/Object;

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/e;->j:Z

    .line 561
    return-object p0
.end method

.method public b(Z)Lcom/bumptech/glide/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 498
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/bumptech/glide/e;->t:Z

    .line 500
    return-object p0

    .line 498
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/f",
            "<TResourceType;>;)",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 315
    iput-boolean v1, p0, Lcom/bumptech/glide/e;->z:Z

    .line 316
    array-length v0, p1

    if-ne v0, v1, :cond_0

    .line 317
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/bumptech/glide/e;->y:Lcom/bumptech/glide/load/f;

    .line 322
    :goto_0
    return-object p0

    .line 319
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/c;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/c;-><init>([Lcom/bumptech/glide/load/f;)V

    iput-object v0, p0, Lcom/bumptech/glide/e;->y:Lcom/bumptech/glide/load/f;

    goto :goto_0
.end method

.method public c(I)Lcom/bumptech/glide/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 453
    iput p1, p0, Lcom/bumptech/glide/e;->l:I

    .line 455
    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/bumptech/glide/e;->g()Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/bumptech/glide/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 427
    iput p1, p0, Lcom/bumptech/glide/e;->k:I

    .line 429
    return-object p0
.end method

.method e()V
    .locals 0

    .prologue
    .line 705
    return-void
.end method

.method f()V
    .locals 0

    .prologue
    .line 701
    return-void
.end method

.method public g()Lcom/bumptech/glide/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 577
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e;

    .line 579
    iget-object v1, p0, Lcom/bumptech/glide/e;->g:Lcom/yelp/android/ae/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/e;->g:Lcom/yelp/android/ae/a;

    invoke-virtual {v1}, Lcom/yelp/android/ae/a;->g()Lcom/yelp/android/ae/a;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/bumptech/glide/e;->g:Lcom/yelp/android/ae/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    return-object v0

    .line 579
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public h()Lcom/bumptech/glide/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 332
    invoke-static {}, Lcom/yelp/android/y/d;->b()Lcom/yelp/android/y/d;

    move-result-object v0

    .line 333
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bumptech/glide/load/f;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/e;->b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method

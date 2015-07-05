.class public final Lcom/bumptech/glide/request/GenericRequest;
.super Ljava/lang/Object;
.source "GenericRequest.java"

# interfaces
.implements Lcom/bumptech/glide/request/a;
.implements Lcom/bumptech/glide/request/d;
.implements Lcom/yelp/android/ag/h;


# annotations
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
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/a;",
        "Lcom/bumptech/glide/request/d;",
        "Lcom/yelp/android/ag/h;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/request/GenericRequest",
            "<****>;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:J

.field private B:Lcom/bumptech/glide/request/GenericRequest$Status;

.field private final b:Ljava/lang/String;

.field private c:Lcom/bumptech/glide/load/b;

.field private d:I

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Lcom/bumptech/glide/load/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private h:Lcom/yelp/android/ae/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ae/f",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private i:Lcom/bumptech/glide/request/b;

.field private j:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Lcom/bumptech/glide/Priority;

.field private n:Lcom/yelp/android/ag/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ag/j",
            "<TR;>;"
        }
    .end annotation
.end field

.field private o:Lcom/bumptech/glide/request/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/c",
            "<-TA;TR;>;"
        }
    .end annotation
.end field

.field private p:F

.field private q:Lcom/bumptech/glide/load/engine/d;

.field private r:Lcom/yelp/android/af/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/af/g",
            "<TR;>;"
        }
    .end annotation
.end field

.field private s:I

.field private t:I

.field private u:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Z

.field private y:Lcom/bumptech/glide/load/engine/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/t",
            "<*>;"
        }
    .end annotation
.end field

.field private z:Lcom/bumptech/glide/load/engine/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yelp/android/ai/f;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest;->a:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->b:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public static a(Lcom/yelp/android/ae/f;Ljava/lang/Object;Lcom/bumptech/glide/load/b;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/yelp/android/ag/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/b;Lcom/bumptech/glide/load/engine/d;Lcom/bumptech/glide/load/f;Ljava/lang/Class;ZLcom/yelp/android/af/g;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/GenericRequest;
    .locals 22
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
            "Lcom/yelp/android/ae/f",
            "<TA;TT;TZ;TR;>;TA;",
            "Lcom/bumptech/glide/load/b;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/yelp/android/ag/j",
            "<TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lcom/bumptech/glide/request/c",
            "<-TA;TR;>;",
            "Lcom/bumptech/glide/request/b;",
            "Lcom/bumptech/glide/load/engine/d;",
            "Lcom/bumptech/glide/load/f",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;Z",
            "Lcom/yelp/android/af/g",
            "<TR;>;II",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/request/GenericRequest",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 111
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/GenericRequest;

    .line 112
    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest;

    invoke-direct {v0}, Lcom/bumptech/glide/request/GenericRequest;-><init>()V

    :cond_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    .line 115
    invoke-direct/range {v0 .. v21}, Lcom/bumptech/glide/request/GenericRequest;->b(Lcom/yelp/android/ae/f;Ljava/lang/Object;Lcom/bumptech/glide/load/b;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/yelp/android/ag/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/b;Lcom/bumptech/glide/load/engine/d;Lcom/bumptech/glide/load/f;Ljava/lang/Class;ZLcom/yelp/android/af/g;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V

    .line 136
    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/engine/t;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<*>;TR;)V"
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->o:Lcom/bumptech/glide/request/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->o:Lcom/bumptech/glide/request/c;

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->j:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/request/GenericRequest;->n:Lcom/yelp/android/ag/j;

    iget-boolean v4, p0, Lcom/bumptech/glide/request/GenericRequest;->x:Z

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->o()Z

    move-result v5

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/request/c;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/yelp/android/ag/j;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->r:Lcom/yelp/android/af/g;

    iget-boolean v1, p0, Lcom/bumptech/glide/request/GenericRequest;->x:Z

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->o()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/af/g;->a(ZZ)Lcom/yelp/android/af/e;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->n:Lcom/yelp/android/ag/j;

    invoke-interface {v1, p2, v0}, Lcom/yelp/android/ag/j;->a(Ljava/lang/Object;Lcom/yelp/android/af/e;)V

    .line 489
    :cond_1
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 490
    iput-object p1, p0, Lcom/bumptech/glide/request/GenericRequest;->y:Lcom/bumptech/glide/load/engine/t;

    .line 492
    const-string/jumbo v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Resource ready in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->A:J

    invoke-static {v2, v3}, Lcom/yelp/android/ai/c;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->c()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x3eb0000000000000L    # 9.5367431640625E-7

    mul-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " fromCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/GenericRequest;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;)V

    .line 496
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 515
    const-string/jumbo v0, "GenericRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 233
    if-nez p1, :cond_1

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    const-string/jumbo v1, " must not be null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    if-eqz p2, :cond_0

    .line 237
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_1
    return-void
.end method

.method private b(Lcom/bumptech/glide/load/engine/t;)V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->q:Lcom/bumptech/glide/load/engine/d;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/d;->a(Lcom/bumptech/glide/load/engine/t;)V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->y:Lcom/bumptech/glide/load/engine/t;

    .line 325
    return-void
.end method

.method private b(Lcom/yelp/android/ae/f;Ljava/lang/Object;Lcom/bumptech/glide/load/b;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/yelp/android/ag/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/b;Lcom/bumptech/glide/load/engine/d;Lcom/bumptech/glide/load/f;Ljava/lang/Class;ZLcom/yelp/android/af/g;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ae/f",
            "<TA;TT;TZ;TR;>;TA;",
            "Lcom/bumptech/glide/load/b;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/yelp/android/ag/j",
            "<TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lcom/bumptech/glide/request/c",
            "<-TA;TR;>;",
            "Lcom/bumptech/glide/request/b;",
            "Lcom/bumptech/glide/load/engine/d;",
            "Lcom/bumptech/glide/load/f",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;Z",
            "Lcom/yelp/android/af/g",
            "<TR;>;II",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    iput-object p1, p0, Lcom/bumptech/glide/request/GenericRequest;->h:Lcom/yelp/android/ae/f;

    .line 183
    iput-object p2, p0, Lcom/bumptech/glide/request/GenericRequest;->j:Ljava/lang/Object;

    .line 184
    iput-object p3, p0, Lcom/bumptech/glide/request/GenericRequest;->c:Lcom/bumptech/glide/load/b;

    .line 185
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->f:Landroid/content/Context;

    .line 186
    iput-object p5, p0, Lcom/bumptech/glide/request/GenericRequest;->m:Lcom/bumptech/glide/Priority;

    .line 187
    iput-object p6, p0, Lcom/bumptech/glide/request/GenericRequest;->n:Lcom/yelp/android/ag/j;

    .line 188
    iput p7, p0, Lcom/bumptech/glide/request/GenericRequest;->p:F

    .line 189
    iput-object p8, p0, Lcom/bumptech/glide/request/GenericRequest;->v:Landroid/graphics/drawable/Drawable;

    .line 190
    iput p9, p0, Lcom/bumptech/glide/request/GenericRequest;->d:I

    .line 191
    iput-object p10, p0, Lcom/bumptech/glide/request/GenericRequest;->w:Landroid/graphics/drawable/Drawable;

    .line 192
    iput p11, p0, Lcom/bumptech/glide/request/GenericRequest;->e:I

    .line 193
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->o:Lcom/bumptech/glide/request/c;

    .line 194
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->i:Lcom/bumptech/glide/request/b;

    .line 195
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->q:Lcom/bumptech/glide/load/engine/d;

    .line 196
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->g:Lcom/bumptech/glide/load/f;

    .line 197
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->k:Ljava/lang/Class;

    .line 198
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/bumptech/glide/request/GenericRequest;->l:Z

    .line 199
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->r:Lcom/yelp/android/af/g;

    .line 200
    move/from16 v0, p19

    iput v0, p0, Lcom/bumptech/glide/request/GenericRequest;->s:I

    .line 201
    move/from16 v0, p20

    iput v0, p0, Lcom/bumptech/glide/request/GenericRequest;->t:I

    .line 202
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->u:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 203
    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->PENDING:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 207
    if-eqz p2, :cond_2

    .line 208
    const-string/jumbo v1, "ModelLoader"

    invoke-interface {p1}, Lcom/yelp/android/ae/f;->e()Lcom/yelp/android/v/m;

    move-result-object v2

    const-string/jumbo v3, "try .using(ModelLoader)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    const-string/jumbo v1, "Transcoder"

    invoke-interface {p1}, Lcom/yelp/android/ae/f;->f()Lcom/yelp/android/ad/c;

    move-result-object v2

    const-string/jumbo v3, "try .as*(Class).transcode(ResourceTranscoder)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    const-string/jumbo v1, "Transformation"

    const-string/jumbo v2, "try .transform(UnitTransformation.get())"

    move-object/from16 v0, p15

    invoke-static {v1, v0, v2}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p21 .. p21}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    const-string/jumbo v1, "SourceEncoder"

    invoke-interface {p1}, Lcom/yelp/android/ae/f;->c()Lcom/bumptech/glide/load/a;

    move-result-object v2

    const-string/jumbo v3, "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    :goto_0
    invoke-virtual/range {p21 .. p21}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p21 .. p21}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    :cond_0
    const-string/jumbo v1, "CacheDecoder"

    invoke-interface {p1}, Lcom/yelp/android/ae/f;->a()Lcom/bumptech/glide/load/d;

    move-result-object v2

    const-string/jumbo v3, "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    :cond_1
    invoke-virtual/range {p21 .. p21}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    const-string/jumbo v1, "Encoder"

    invoke-interface {p1}, Lcom/yelp/android/ae/f;->d()Lcom/bumptech/glide/load/e;

    move-result-object v2

    const-string/jumbo v3, "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    :cond_2
    return-void

    .line 215
    :cond_3
    const-string/jumbo v1, "SourceDecoder"

    invoke-interface {p1}, Lcom/yelp/android/ae/f;->b()Lcom/bumptech/glide/load/d;

    move-result-object v2

    const-string/jumbo v3, "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 373
    if-nez v0, :cond_1

    .line 374
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->n:Lcom/yelp/android/ag/j;

    invoke-interface {v1, p1, v0}, Lcom/yelp/android/ag/j;->a(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private k()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->e:I

    if-lez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->w:Landroid/graphics/drawable/Drawable;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->w:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private l()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->v:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->d:I

    if-lez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->v:Landroid/graphics/drawable/Drawable;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->v:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private m()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->i:Lcom/bumptech/glide/request/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->i:Lcom/bumptech/glide/request/b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/b;->a(Lcom/bumptech/glide/request/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->i:Lcom/bumptech/glide/request/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->i:Lcom/bumptech/glide/request/b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/b;->b(Lcom/bumptech/glide/request/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()Z
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->i:Lcom/bumptech/glide/request/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->i:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->h:Lcom/yelp/android/ae/f;

    .line 146
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->j:Ljava/lang/Object;

    .line 147
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->f:Landroid/content/Context;

    .line 148
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->n:Lcom/yelp/android/ag/j;

    .line 149
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->v:Landroid/graphics/drawable/Drawable;

    .line 150
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->w:Landroid/graphics/drawable/Drawable;

    .line 151
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->o:Lcom/bumptech/glide/request/c;

    .line 152
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->i:Lcom/bumptech/glide/request/b;

    .line 153
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->g:Lcom/bumptech/glide/load/f;

    .line 154
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->r:Lcom/yelp/android/af/g;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/GenericRequest;->x:Z

    .line 156
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->z:Lcom/bumptech/glide/load/engine/f;

    .line 157
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest;->a:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public a(II)V
    .locals 12

    .prologue
    .line 398
    const-string/jumbo v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Got onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->A:J

    invoke-static {v2, v3}, Lcom/yelp/android/ai/c;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_2

    .line 427
    :cond_1
    :goto_0
    return-void

    .line 404
    :cond_2
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->RUNNING:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 406
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->p:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 407
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->p:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 409
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->h:Lcom/yelp/android/ae/f;

    invoke-interface {v0}, Lcom/yelp/android/ae/f;->e()Lcom/yelp/android/v/m;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->j:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/yelp/android/v/m;->a(Ljava/lang/Object;II)Lcom/yelp/android/r/c;

    move-result-object v4

    .line 412
    if-nez v4, :cond_3

    .line 413
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Got null fetcher from model loader"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 416
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->h:Lcom/yelp/android/ae/f;

    invoke-interface {v0}, Lcom/yelp/android/ae/f;->f()Lcom/yelp/android/ad/c;

    move-result-object v7

    .line 417
    const-string/jumbo v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "finished setup for calling load in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, p0, Lcom/bumptech/glide/request/GenericRequest;->A:J

    invoke-static {v8, v9}, Lcom/yelp/android/ai/c;->a(J)D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;)V

    .line 420
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/GenericRequest;->x:Z

    .line 421
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->q:Lcom/bumptech/glide/load/engine/d;

    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->c:Lcom/bumptech/glide/load/b;

    iget-object v5, p0, Lcom/bumptech/glide/request/GenericRequest;->h:Lcom/yelp/android/ae/f;

    iget-object v6, p0, Lcom/bumptech/glide/request/GenericRequest;->g:Lcom/bumptech/glide/load/f;

    iget-object v8, p0, Lcom/bumptech/glide/request/GenericRequest;->m:Lcom/bumptech/glide/Priority;

    iget-boolean v9, p0, Lcom/bumptech/glide/request/GenericRequest;->l:Z

    iget-object v10, p0, Lcom/bumptech/glide/request/GenericRequest;->u:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object v11, p0

    invoke-virtual/range {v0 .. v11}, Lcom/bumptech/glide/load/engine/d;->a(Lcom/bumptech/glide/load/b;IILcom/yelp/android/r/c;Lcom/yelp/android/ae/b;Lcom/bumptech/glide/load/f;Lcom/yelp/android/ad/c;Lcom/bumptech/glide/Priority;ZLcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/load/engine/f;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->z:Lcom/bumptech/glide/load/engine/f;

    .line 423
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->y:Lcom/bumptech/glide/load/engine/t;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/bumptech/glide/request/GenericRequest;->x:Z

    .line 424
    const-string/jumbo v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "finished onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->A:J

    invoke-static {v2, v3}, Lcom/yelp/android/ai/c;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 423
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/bumptech/glide/load/engine/t;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 447
    if-nez p1, :cond_0

    .line 448
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->k:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " inside, but instead got null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/Exception;)V

    .line 474
    :goto_0
    return-void

    .line 453
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->b()Ljava/lang/Object;

    move-result-object v1

    .line 454
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->k:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 455
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/GenericRequest;->b(Lcom/bumptech/glide/load/engine/t;)V

    .line 456
    new-instance v2, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected to receive an object of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bumptech/glide/request/GenericRequest;->k:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " but instead got "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " inside Resource{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "}."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_3

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_3
    const-string/jumbo v0, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    goto :goto_2

    .line 466
    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->m()Z

    move-result v0

    if-nez v0, :cond_5

    .line 467
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/GenericRequest;->b(Lcom/bumptech/glide/load/engine/t;)V

    .line 469
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Lcom/bumptech/glide/request/GenericRequest$Status;

    goto/16 :goto_0

    .line 473
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/bumptech/glide/request/GenericRequest;->a(Lcom/bumptech/glide/load/engine/t;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 503
    const-string/jumbo v0, "GenericRequest"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    const-string/jumbo v0, "GenericRequest"

    const-string/jumbo v1, "load failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->FAILED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 509
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->o:Lcom/bumptech/glide/request/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->o:Lcom/bumptech/glide/request/c;

    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->j:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->n:Lcom/yelp/android/ag/j;

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->o()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/bumptech/glide/request/c;->onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/yelp/android/ag/j;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 510
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/GenericRequest;->b(Ljava/lang/Exception;)V

    .line 512
    :cond_2
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 249
    invoke-static {}, Lcom/yelp/android/ai/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/request/GenericRequest;->A:J

    .line 250
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->j:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/Exception;)V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 256
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->s:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->t:I

    if-lez v0, :cond_3

    .line 257
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->s:I

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->t:I

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/GenericRequest;->a(II)V

    .line 262
    :goto_1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->g()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->j()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->n:Lcom/yelp/android/ag/j;

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ag/j;->c(Landroid/graphics/drawable/Drawable;)V

    .line 265
    :cond_2
    const-string/jumbo v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->A:J

    invoke-static {v2, v3}, Lcom/yelp/android/ai/c;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->n:Lcom/yelp/android/ag/j;

    invoke-interface {v0, p0}, Lcom/yelp/android/ag/j;->a(Lcom/yelp/android/ag/h;)V

    goto :goto_1
.end method

.method c()V
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->CANCELLED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 282
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->z:Lcom/bumptech/glide/load/engine/f;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->z:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/f;->a()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->z:Lcom/bumptech/glide/load/engine/f;

    .line 286
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 300
    invoke-static {}, Lcom/yelp/android/ai/f;->a()V

    .line 301
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->c()V

    .line 303
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->y:Lcom/bumptech/glide/load/engine/t;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->y:Lcom/bumptech/glide/load/engine/t;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->b(Lcom/bumptech/glide/load/engine/t;)V

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->n:Lcom/yelp/android/ag/j;

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ag/j;->a(Landroid/graphics/drawable/Drawable;)V

    .line 309
    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->d()V

    .line 319
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->PAUSED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 320
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->RUNNING:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->g()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->CANCELLED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->FAILED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
